# This define type manage all entry of hosts file

define ansible::hosts (
  String $section,
  Array $entrys,

) {

  concat::fragment { $title:
    target  => '/etc/ansible/hosts',
    content => epp('ansible/hosts.epp',
      {
        section => $section,
        entrys  => $entrys,
      }),
  }

}
