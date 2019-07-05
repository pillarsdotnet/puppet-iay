# Import and run terraform.

class iay::terraform {
  $logfile = "${iay::logdir}/iay.log"

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
  file { '/opt/puppetlabs/puppet/autosign.conf':
    ensure => 'file',
    before => Anchor['iay-terraform-imported'],
    mode   => '0640',
  }
  exec { 'terraform apply':
    command => "terraform apply -auto-approve >>${iay::logfile} 2>&1",
    require => Anchor['iay-terraform-imported'],
    timeout => 0,
  }
}
