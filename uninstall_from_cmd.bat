@echo off
set "LAUNCH=C:\Windows\Ash.bat"

if exist "%LAUNCH%" (
    del "%LAUNCH%"
    echo Ash command uninstalled.
) else (
    echo Ash command was not found.
)
pause
