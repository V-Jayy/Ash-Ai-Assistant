@echo off
set "TARGET=C:\Program Files\Ash"
set "LAUNCH=C:\Windows\Ash.bat"

if not exist "%TARGET%" (
    echo Installing Ash to system first...
    call install_to_system.bat
)

echo Adding Ash to PATH...

echo @echo off > "%LAUNCH%"
echo cd /d "%TARGET%" >> "%LAUNCH%"
echo "%TARGET%\venv\Scripts\python.exe" -m kyra.assistant %%* >> "%LAUNCH%"

echo.
echo Ash installed to PATH. You can now use the Ash command anywhere.
