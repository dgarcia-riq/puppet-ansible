## Class to install core packages and ansible
class ansible::install (
  Array $packages
) {

  package { $packages:
    ensure => 'latest',
  }
  -> package { 'ansible':
    ensure   => 'latest',
    provider => 'pip',
  }
}
