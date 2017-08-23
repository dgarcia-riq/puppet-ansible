## Class to install core packages and ansible
class ansible::install {

  $packages = lookup('ansible::packages')

  package { $packages:
    ensure => $ansible::version,
  }

  -> package { $ansible::package_name:
    ensure   => $ansible::version,
    provider => $ansible::provider,
  }

}
