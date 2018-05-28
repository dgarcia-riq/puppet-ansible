# PRIVATE CLASS: do not use directly
class ansible::repo::apt {

  include ::apt

  apt::source { 'ansible_repo':
    ensure   => $ansible::ensure,
    comment  => 'This is the latest ansible debian/ubuntu mirror',
    location => 'http://ppa.launchpad.net/ansible/ansible/ubuntu',
    release  => 'bionic',
    repos    => 'main',
    key      => {
      'id'     => '6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367',
      'server' => 'hkp://keyserver.ubuntu.com:80',
    },
    include  => { 'deb' => true },
  }
}
