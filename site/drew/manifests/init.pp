class drew {
  file { '/root/mynewfile':
    ensure => file,
  }
  group { 'mygroup':
    ensure => present,
  }
}
