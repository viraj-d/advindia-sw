# manifests/winrar.pp

class advindia_sw::winrar inherits advindia_sw {
  File { source_permissions => ignore }
  ensure_resource(file, $workFolder, { ensure => directory })

  file{'WinrarInstaller':
    ensure => present,
    path   => "${workFolder}\\winrar-x64.exe",
    source => 'puppet:///modules/advindia_sw/winrar-x64.exe',
    #notify => Exec['WinrarInstall']
  }

  exec{'WinrarInstall':
    command     => "${workFolder}\\winrar-x64.exe /S /v\"/l* install.log\"",
    creates     => 'C:\Program Files\WinRAR',
    require     => File['WinrarInstaller']
  }
}
