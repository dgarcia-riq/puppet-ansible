## Class to install core packages and ansible
class ansible::install {
  $rhel_packages = ['epel-release','python','python34','python-pip']

  package { $rhel_packages:
    ensure => 'latest',
  }
  -> package { 'ansible':
    ensure   => 'present',
    provider => 'pip',
  }
}
