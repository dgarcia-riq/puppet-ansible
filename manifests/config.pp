# Class: Config
class ansible::config {

  File {
    ensure => 'file',
    mode   => '0755',
    owner  => $ansible::user,
    group  => $ansible::group,
  }

  file { $ansible::confdir:
    ensure => 'directory',
  }

  file { "${ansible::confdir}/ansible.cfg":
    content => epp('ansible/ansible.cfg.epp'),
  }

  concat { "${ansible::confdir}/ansible.cfg":
    ensure => present,
    mode   => '0755',
    owner  => $ansible::user,
    group  => $ansible::group,
  }

  concat::fragment { 'hosts_header':
    target  => $ansible::confdir,
    content => "# Managed by Puppet - do not modify\n\n",
    order   => '01',
  }

}
