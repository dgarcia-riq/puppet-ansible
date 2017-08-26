## Class to install core packages and ansible
class ansible::install {

  case $facts['operatingsystem'] {

    'RedHat', 'CentOS', 'Scientific', 'OracleLinux': {

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
  }

  $ensure = $ansible::ensure ? {
    'absent' => 'absent',
    default  => $::ansible::version,
  }

  package { $ansible::package_name:
    ensure => $ensure,
  }
}
