# Import and run terraform.

class iay::terraform {
  include hashicorp::terraform
  $logfile = "${iay::logdir}/iay.log"

  file { '/opt/puppetlabs/puppet/autosign.conf':
    ensure => 'file',
    before => Anchor['iay-terraform-configured'],
    group  => 'puppet',
    mode   => '0640',
    owner  => 'puppet',
  }

  exec { 'terraform init':
    before  => Anchor['iay-terraform-initialized'],
    command => 'terraform init >> logfile 2>&1',
    require => Anchor['iay-terraform-configured'],
  }
  [ $iay::logdir, $iay::workdir ].each |$d| {
    file { $d:
      ensure => 'directory',
      mode   => '0700',
    }
  }
  [ 'rehome-redhat' ].each |$file| {
    file { "${iay::workdir}/${file}":
      ensure => 'file',
      before => Anchor['iay-terraform-configured'],
      mode   => '0750',
      source => "puppet:///modules/${module_name}/${file}",
    }
  }
  exec { 'terraform apply':
    command => "terraform apply -auto-approve >>${iay::logfile} 2>&1",
    require => Anchor['iay-terraform-imported'],
    timeout => 0,
  }
}
