# @summary Builds infrastructure from yaml.
#
# Builds terraform control file; imports existing resources and calls terraform
# to build new resources.
#
# @example
#   include iay
#
# @param [IAY::Hash] hash
#   Structure representing the infrastructure to be enforced.
#
# @param [Stdlib::Absolutepath] workdir
#   Terraform working directory.
#
class iay(
  IAY::Hash            $hash    = {},
  Stdlib::Absolutepath $workdir = '/var/iay',
){
  file { $workdir:
    ensure => 'directory',
    mode   => '0750',
  }
  $hash.each |$k,$v| {
    $content = {
      $k => $k? {
        'resource' => Hash(
          $v.map |$rtype, $rhash| {
            [
              $rtype,
              Hash(
                $rhash.map |$rname, $rval| {
                  [
                    $rname,
                    Hash(
                      $rval.reduce({}) |$m, $v| {
                        $v[0] ? {
                          'import' => $m,
                          default  => $m + $v,
                        }
                      }
                    )
                  ]
                }
              )
            ]
          }
        ),
        default    => $v,
      }
    }
    file { "${k}.tf.json":
      ensure  => 'file',
      content => inline_template('<%= JSON.pretty_generate(@content) %>'),
      mode    => '0640',
      path    => "${workdir}/${k}.tf.json",
    }
  }
  Exec { path => '/usr/local/bin:/usr/bin' }
  exec { 'terraform init':
    cwd         => $workdir,
    notify      => File['terraform.tfstate'],
    refreshonly => true,
    subscribe   => File['provider.tf.json'],
  }
  file { 'terraform.tfstate':
    ensure  => 'absent',
    path    => "${workdir}/terraform.tfstate",
    require => Exec['terraform init'],
  }
  $hash['resource'].each |IAY::Resource_Type $rtype, IAY::Generic::Hash::Any $rhash| {
    $rhash.each |IAY::Generic::String1_255 $rname, IAY::Generic::Hash::Any $rval| {
      exec { "terraform import ${rtype}.${rname} '${rval['import']}'":
        before      => Exec['terraform apply'],
        cwd         => $workdir,
        refreshonly => true,
  returns           => [0, 1],
        subscribe   => File['resource.tf.json', 'terraform.tfstate']
      }
    }
  }
  exec { 'terraform apply':
    command   => 'terraform apply -auto-approve',
    cwd       => $workdir,
    logoutput => true,
    timeout   => 0,
  }
}
