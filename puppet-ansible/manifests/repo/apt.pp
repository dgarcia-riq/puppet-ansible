# PRIVATE CLASS: do not use directly
class ansible::repo::apt {

  contain ::apt

  apt::source { 'ansible_repo':
    ensure   => $ansible::ensure,
    comment  => 'This is the latest ansible debian/ubuntu mirror',
    location => 'http://ppa.launchpad.net/ansible/ansible/ubuntu',
    release  => 'trusty',
    repos    => 'main',
    key      => {
      'id'     => '93C4A3FD7BB9C367',
      'server' => 'hkp://keyserver.ubuntu.com:80',
    },
    include  => { 'deb' => true },
  }

    Apt::Source['ansible_repo']
      ~> Exec['apt_update']
}
