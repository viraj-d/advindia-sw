# manifests/winmerge.pp

class advindia_sw::winmerge inherits advindia_sw {
 File {source_permissions => ignore}
 ensure_resource (file, $workFolder, { ensure => directory })
 
 file{'WinmergeInstaller':
       ensure => present,
       path => "${workFolder}\\WinMerge-2.14.0-Setup.exe",
       source => 'puppet:///modules/advindia_sw/WinMerge-2.14.0-Setup.exe',
     }
     
 exec{'WinmergeInstall':
      command => "${workFolder}\\WinMerge-2.14.0-Setup.exe /S /v\"/l* install.log\"",
      creates     => 'C:\Program Files\WinMerge',
      require     => File['WinmergeInstaller']
    }
}
