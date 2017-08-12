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

  file { '/etc/ansible/ansible.cfg':
    content => epp('ansible/ansible.cfg.epp'),
  }

  concat { '/etc/ansible/hosts': 
    ensure => present,
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  }

  concat::fragment { 'hosts_header': 
    target  => '/etc/ansible/hosts',
    content => "# Managed by Puppet - do not modify\n\n",
    order   => '01',
  }

}
