class dsciis {

  # TODO: add the correct name to this resource so DSC can trigger reboots
  reboot { 'dsc_reboot':
    when    => pending,
    timeout => 15,
  }

  # Translate these DSC Powershell resources into Puppet code below
  dsc_windowsfeature { 'iis':
    dsc_ensure => 'Present'
    dsc_name   => 'Web-Server'
   }
  
  dsc_windowsfeature { 'iisscriptingtools':
    dsc_ensure => 'Present',
    Name       => 'Web-Scripting-Tools',
  }
  
  # The index file is managed as a native Puppet file resource.
  file { 'C:/inetpub/wwwroot/index.html':
    ensure  => 'file',
    source  => 'puppet:///modules/dsciis/index.html',
    require => Dsc_windowsfeature['iis'],
  }

}
