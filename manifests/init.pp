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
  if $hash.get('resource') {
    include hashicorp::terraform
    $logfile = "${logdir}/iay.log"
    Exec {
      cwd         => $workdir,
      group       => $group,
      path        => '/usr/local/bin:/usr/bin',
      provider    => 'shell',
      require     => Hashicorp::Download['terraform'],
      user        => $user,
    }
    File {
      before => Anchor['iay-terraform-configured'],
      owner  => $user,
      group  => $group,
    }
    anchor { 'iay-terraform-configured': }
    exec { 'terraform init':
      before  => Anchor['iay-terraform-initialized'],
      command => 'terraform init >> logfile 2>&1',
      require => Anchor['iay-terraform-configured'],
    }
    File <| title == 'provider.tf.json' |> ~> Exec['terraform init']
    anchor { 'iay-terraform-initialized': }
    [ $logdir, $workdir ].each |$d| {
      file { $d:
        ensure => 'directory',
        mode   => '0700',
      }
    }
    [ 'rehome-redhat' ].each |$file| {
      file { "${workdir}/${file}":
        ensure => 'file',
        before => Anchor['iay-terraform-configured'],
        mode   => '0750',
        source => "puppet:///modules/${module_name}/${file}",
      }
    }
    anchor { 'iay-terraform-imported': }
    exec { 'terraform apply':
      command => "terraform apply -auto-approve >>${logfile} 2>&1",
      require => Anchor['iay-terraform-imported'],
      timeout => 0,
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
      case $k {
        'resource': {
          # Must have at least one resource before invoking terraform at all.
          $hash.get('resource', {}).each |IAY::Resource_Type $rtype, IAY::Generic::Hash::Any $rhash| {
            $rhash.each |IAY::Generic::String1_255 $rname, IAY::Generic::Hash::Any $rval| {
              exec { "terraform import ${rtype}.${rname}":
                before  => Anchor['iay-terraform-imported'],
                command => "terraform import ${rtype}.${rname} '${rval['import']}' >>${logfile} 2>&1",
                require => Anchor['iay-terraform-initialized'],
                returns => [0, 1],
              }
            }
          }
        }
        default: {}
      }
    }
  }
}
