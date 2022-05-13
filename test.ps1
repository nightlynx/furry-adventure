$url-u = "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe"
$dest-u = "C:\Agent_Uninstall.exe"
Invoke-WebRequest -Uri $url-u -OutFile $dest-u

$url-a = "https://github.com/nightlynx/furry-adventure/raw/main/OT-Testing.MSI"
$dest-a = "C:\OT-Test.msi"
Invoke-WebRequest -Uri $url-a -OutFile $dest-a


powershell.exe start-process -filepath $dest-u
powershell.exe start-process -filepath $dest-a
