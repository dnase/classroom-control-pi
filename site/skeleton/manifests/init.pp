class skeleton {
  file { '/etc/skel':
#    ensure => ???,   # what value should go here?
    ensure  => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  
  # add a resource to manage /etc/skel/.bashrc

    file { '/etc/skel/.bashrc':
      ensure => 'present',
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => 'puppet:///skeleton/bashrc',
    }

}
