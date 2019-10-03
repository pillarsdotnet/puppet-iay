# Import and run terraform.

class iay::terraform {
  $logfile = "${iay::logdir}/iay.log"

  include hashicorp::terraform

  $exec_defaults = {
    'cwd'         => $iay::workdir,
    'environment' => [
      "HOME=${iay::home}",
      "LOGNAME=${iay::user}",
      "USER=${iay::user}",
    ],
    'group'       => $iay::group,
    'provider'    => 'shell',
    'user'        => $iay::user,
  }

  $file_defaults = {
    'before' => Anchor['iay-terraform-configured'],
    'group'  => $iay::group,
    'owner'  => $iay::user,
  }

  exec { 'Purge iay::workdir':
    before  => File[$iay::workdir],
    command => "/bin/rm -rf ${iay::workdir}",
  }

  [ $iay::logdir, $iay::workdir ].each |$d| {
    file { $d:
      ensure => 'directory',
      mode   => '0700',
      *      => $file_defaults,
    }
  }

  exec { 'terraform init':
    before  => Anchor['iay-terraform-initialized'],
    command => 'terraform init >> logfile 2>&1',
    require => Anchor['iay-terraform-configured'],
    *       => $exec_defaults,
  }

  file { '/opt/puppetlabs/puppet/autosign.conf':
    ensure => 'file',
    mode   => '0640',
    *      => $file_defaults,
  }
  exec { 'terraform apply':
    command => "terraform apply -auto-approve >>${iay::logfile} 2>&1",
    require => Anchor['iay-terraform-imported'],
    timeout => 0,
    *       => $exec_defaults,
  }
}
