define ansible::hosts (
  Hash $entry,
) {
  
  $file = '/etc/ansible/hosts'

  concat { $file:
    owner => 'root',
    group => 'root',
    mode  => '0644'
  }

  concat::fragment{ 'teste':
    target  => $file,
    content => "\nPuppet modules on this server:\n\n",
    order   => '01'
  }
}
