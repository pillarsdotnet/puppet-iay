# Import and run terraform.

class iay::terraform {
  $logfile = "${iay::logdir}/iay.log"

  include hashicorp::terraform

  exec { 'terraform init':
    before   => Anchor['iay-terraform-initialized'],
    command  => 'terraform init >> logfile 2>&1',
    cwd      => $iay::workdir,
    group    => $iay::group,
    provider => 'shell',
    require  => Anchor['iay-terraform-configured'],
    user     => $iay::user,
  }
  [ $iay::logdir, $iay::workdir ].each |$d| {
    file { $d:
      ensure => 'directory',
      before => Anchor['iay-terraform-configured'],
      group  => $iay::group,
      mode   => '0700',
      owner  => $iay::user,
    }
  }
  [ 'rehome-redhat' ].each |$file| {
    file { "${iay::workdir}/${file}":
      ensure => 'file',
      before => Anchor['iay-terraform-configured'],
      group  => $iay::group,
      mode   => '0750',
      owner  => $iay::user,
      source => "puppet:///modules/${module_name}/${file}",
    }
  }
  file { '/opt/puppetlabs/puppet/autosign.conf':
    ensure => 'file',
    before => Anchor['iay-terraform-configured'],
    group  => $iay::group,
    mode   => '0640',
    owner  => $iay::user,
  }
  exec { 'terraform apply':
    command  => "terraform apply -auto-approve >>${iay::logfile} 2>&1",
    cwd      => $iay::workdir,
    group    => $iay::group,
    provider => 'shell',
    require  => Anchor['iay-terraform-imported'],
    timeout  => 0,
    user     => $iay::user,
  }
}
