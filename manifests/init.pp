# manifests/init.pp

class advindia($workFolder = "C:\\Softwares") {
  # Defaults
  File { source_permissions => ignore }
  
  # Include class winrar
  include advindia::winrar
}