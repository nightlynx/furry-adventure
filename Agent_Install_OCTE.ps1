Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe" -Outfile "C:\Agent_Uninstall.exe"
Invoke-WebRequest -Uri "https://github.com/nightlynx/furry-adventure/raw/main/Agent_Install_OCTE.MSI" -Outfile "C:\Agent_Install_OCTE.MSI"

powershell.exe start-process -filepath "C:\Agent_Uninstall.exe" -Wait
wmic product where "Name like '%%ScreenConnect%%'" call uninstall /nointeractive
powershell.exe start-process -filepath "C:\Agent_Install_OCTE.MSI /qn" -Wait

Remove-Item "C:\Agent_Uninstall.exe"
Remove-Item "C:\Agent_Install_OCTE.MSI"
Remove-Item "C:\Agent_Install_OCTE.ps1"
