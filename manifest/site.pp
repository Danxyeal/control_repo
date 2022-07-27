node default {
  file {'/root/PREADME':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
