# manifests/winmerge.pp

class advindia_sw:winmerge inherits advindia_sw {
 File {source_permissions => ignore}
 ensure_resource (file, $workFolder, { ensure => directory })
 
}
