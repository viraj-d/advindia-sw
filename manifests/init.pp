# manifests/init.pp

class advindia_sw($workFolder = "C:\\Softwares") {
  # Defaults
  File { source_permissions => ignore }
  
  # Include class winrar
  include advindia_sw::winrar
}
