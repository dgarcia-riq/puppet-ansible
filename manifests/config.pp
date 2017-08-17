# Class: Config
class ansible::config {

  file { $ansible::confdir:
    ensure => 'directory',
    mode   => '0755',
    owner  => $ansible::user,
    group  => $ansible::group,
  }

  file { "${ansible::confdir}/ansible.cfg":
    ensure => 'file',    
    mode   => '0644',
    owner  => $ansible::user,
    group  => $ansible::group,
    content => epp('ansible/ansible.cfg.epp'),
  }

  concat { "${ansible::confdir}/hosts":
    ensure => present,
    mode   => '0644',
    owner  => $ansible::user,
    group  => $ansible::group,
  }

  concat::fragment { 'hosts_header':
    target  => "${ansible::confdir}/hosts",
    content => "# Managed by Puppet - do not modify\n",
    order   => '01',
  }

}
