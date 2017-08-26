# This define type manage all entrys of hosts file

define ansible::hosts (
  Array $entrys,
) {

  concat { "${ansible::confdir}/hosts":
    ensure => present,
    mode   => '0644',
    owner  => $ansible::user,
    group  => $ansible::group,
    warn   => true,
  }

  concat::fragment { $title:
    target  => "${ansible::confdir}/hosts",
    content => epp('ansible/hosts.epp',
      {
        section => $title,
        entrys  => $entrys,
      }),
  }

}
