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
  String[1]            $group   = 'puppet',
  IAY::Hash            $hash    = {},
  Stdlib::Absolutepath $logdir  = '/var/log/iay',
  String[1]            $user    = 'puppet',
  Stdlib::Absolutepath $workdir = '/var/iay',
){
  Exec {
    path    => '/usr/local/bin:/usr/bin',
    require => Hashicorp::Download['terraform'],
  }
  [ $logdir, $workdir ].each |$d| {
    file { $d:
      ensure => 'directory',
      before => Exec['terraform init'],
      group  => $group,
      owner  => $user,
      mode   => '0700',
    }
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
    $logfile = "${logdir}/iay.log"
    file { "${k}.tf.json":
      ensure  => 'file',
      before  => Exec['terraform init'],
      content => inline_template('<%= JSON.pretty_generate(@content) %>'),
      group   => $group,
      mode    => '0640',
      owner   => $user,
      path    => "${workdir}/${k}.tf.json",
    }
    case $k {
      'provider': {
        # Must have at least one provider before calling terraform init.
        exec { 'terraform init >> logfile 2>&1':
          before      => Anchor['iay-terraform-initialized'],
          cwd         => $workdir,
          group       => $group,
          provider    => 'shell',
          refreshonly => true,
          subscribe   => File['provider.tf.json'],
          user        => $user,
        }
      }
      'resource': {
        # Must have at least one resource before invoking terraform at all.
        include hashicorp::terraform
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
            exec { "terraform import ${rtype}.${rname} '${rval['import']}' >>${logfile} 2>&1":
              cwd         => $workdir,
              group       => $group,
              notify      => Exec['terraform apply'],
              provider    => 'shell',
              refreshonly => true,
              require     => Anchor['iay-terraform-initialized'],
              returns     => [0, 1],
              subscribe   => File['resource.tf.json'],
              user        => $user,
            }
          }
        }
        exec { 'terraform apply':
          command     => "terraform apply -auto-approve >>${logfile} 2>&1",
          cwd         => $workdir,
          group       => $group,
          onlyif      => 'test -f resource.tf.json',
          refreshonly => true,
          timeout     => 0,
          user        => $user,
        }
      }
      default: {}
    }
  }
}
