[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe" -Outfile "C:\Agent_Uninstall.exe"
Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Install_EDCO.MSI" -Outfile "C:\Agent_Install_EDCO.MSI"

powershell.exe start-process -filepath "C:\Agent_Uninstall.exe" -Wait
wmic product where "Name like '%%ScreenConnect%%'" call uninstall /nointeractive
Start-Sleep -Seconds 60
powershell.exe start-process -filepath "C:\Agent_Install_EDCO.MSI /qn" -Wait

Remove-Item "C:\Agent_Uninstall.exe"
Remove-Item "C:\Agent_Install_EDCO.MSI"
Remove-Item "C:\Agent_Install_EDCO.ps1"
