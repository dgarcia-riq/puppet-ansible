## Class to install core packages and ansible
class ansible::install {

  case $facts['operatingsystem'] {

    'RedHat', 'CentOS', 'OracleLinux', 'Fedora': {

      contain ansible::repo::yum

    }

    'Debian', 'Ubuntu': {

      contain ansible::repo::apt

      package { 'dirmngr':
        ensure => $ansible::ensure,
      }

      Package['dirmngr']
        -> Class['ansible::repo::apt']
          -> Package[$ansible::package_name]
    }

    default: { fail('Your operating system is not supported.') }
  }

  $ensure = $ansible::ensure ? {
    'absent' => 'absent',
    default  => $::ansible::version,
  }

  package { $ansible::package_name:
    ensure => $ensure,
  }
}
