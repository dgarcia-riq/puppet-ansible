# Class: Config

class ansible::config {

  File {
    mode    => '0640',
    user    => 'root',
    group   => 'root',
  }

  file { '/etc/ansible/ansible.cfg':
    ensure  => 'present',
    content => epp('ansible/ansible.cfg.epp'),
  }

  file { '/etc/ansible/hosts':
    ensure  => 'present',
    content => epp('ansible/hosts.epp'),
  }

}
