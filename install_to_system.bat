@echo off
set "TARGET=C:\Program Files\Ash"
set "LAUNCH=C:\Windows\Ash.bat"

echo Installing Ash AI Assistant to system...

if not exist "%TARGET%" mkdir "%TARGET%"

xcopy /E /I /Y . "%TARGET%"

if not exist "%TARGET%\venv" (
    echo Creating virtual environment...
    python -m venv "%TARGET%\venv"
    "%TARGET%\venv\Scripts\pip.exe" install -r "%TARGET%\requirements.txt"
)

echo Creating launcher...
echo @echo off > "%LAUNCH%"
echo cd /d "%TARGET%" >> "%LAUNCH%"
echo "%TARGET%\venv\Scripts\python.exe" -m kyra.assistant %%* >> "%LAUNCH%"

echo.
echo Ash installed. You can run it with: Ash
