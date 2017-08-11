# Class: Config
class ansible::config {

  File {
    ensure => 'file',
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/ansible':
    ensure => 'directory',
  }

  -> file { '/etc/ansible/ansible.cfg':
    content => epp('ansible/ansible.cfg.epp'),
  }

  file { '/etc/ansible/hosts':
    content => epp('ansible/hosts.epp'),
  }

}
