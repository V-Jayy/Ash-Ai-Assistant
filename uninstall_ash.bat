@echo off
set "TARGET=C:\Program Files\Ash"
set "LAUNCH=C:\Windows\Ash.bat"

echo Uninstalling Ash AI Assistant...
if exist "%TARGET%" rmdir /s /q "%TARGET%"
if exist "%LAUNCH%" del "%LAUNCH%"
echo Ash has been fully uninstalled.
