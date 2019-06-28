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
  Exec {
    path    => '/usr/local/bin:/usr/bin',
    require => Hashicorp::Download['terraform'],
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
      before  => Exec['terraform init'],
      content => inline_template('<%= JSON.pretty_generate(@content) %>'),
      mode    => '0640',
      path    => "${workdir}/${k}.tf.json",
    }
    case $k {
      'provider': {
        # Must have at least one provider before calling terraform init.
        exec { 'terraform init':
          before      => Anchor['iay-terraform-initialized'],
          cwd         => $workdir,
          refreshonly => true,
          subscribe   => File['provider.tf.json'],
        }
      }
      'resource': {
        # Must have at least one resource before invoking terraform at all.
        include hashicorp::terraform
        file { $workdir:
          ensure => 'directory',
          mode   => '0750',
        }
        [ 'rehome-redhat' ].each |$file| {
          file { "${workdir}/${file}":
            ensure => 'file',
            before => Exec['terraform apply'],
            mode   => '0750',
            source => "puppet:///modules/${module_name}/${file}",
          }
        }
        anchor { 'iay-terraform-initialized': }
        $hash.get('resource', {}).each |IAY::Resource_Type $rtype, IAY::Generic::Hash::Any $rhash| {
          $rhash.each |IAY::Generic::String1_255 $rname, IAY::Generic::Hash::Any $rval| {
            exec { "terraform import ${rtype}.${rname} '${rval['import']}'":
              cwd         => $workdir,
              notify      => Exec['terraform apply'],
              refreshonly => true,
              returns     => [0, 1],
              require     => Anchor['iay-terraform-initialized'],
              subscribe   => File['resource.tf.json'],
            }
          }
        }
        exec { 'terraform apply':
          command     => 'terraform apply -auto-approve',
          cwd         => $workdir,
          logoutput   => true,
          onlyif      => 'test -f resource.tf.json',
          refreshonly => true,
          timeout     => 0,
        }
      }
      default: {}
    }
  }
}
