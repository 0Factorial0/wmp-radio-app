@echo off
set "ShortcutPath=%UserProfile%\Desktop"

powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s1 = $ws.CreateShortcut('%ShortcutPath%\Mode 1.lnk'); $s1.TargetPath = 'pythonw.exe'; $s1.Arguments = '\"%~dp0mode1.py\"'; $s1.IconLocation = '%~dp0favicon.ico,0'; $s1.Save(); $s2 = $ws.CreateShortcut('%ShortcutPath%\Mode 2.lnk'); $s2.TargetPath = 'pythonw.exe'; $s2.Arguments = '\"%~dp0mode2.py\"'; $s2.IconLocation = '%~dp0favicon.ico,0'; $s2.Save()"