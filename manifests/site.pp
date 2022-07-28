node default {
  file {'/root/PUPPET_README.md':
    ensure  => file,
    content => 'Readme created by puppet.',
    owner   => 'root',
  }
}
