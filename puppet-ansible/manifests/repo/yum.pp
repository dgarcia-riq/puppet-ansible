# PRIVATE CLASS: do not use directly
class ansible::repo::yum {

  yumrepo { 'epel':
    ensure         => 'present',
    descr          => 'Extra Packages for Enterprise Linux 7 - $basearch',
    enabled        => '1',
    failovermethod => 'priority',
    gpgcheck       => '1',
    gpgkey         => 'https://archive.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7',
    mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
  }

}
