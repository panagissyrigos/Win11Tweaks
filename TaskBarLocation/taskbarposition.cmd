@echo off
echo Setting registry key
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 /ve /f
REM If no errors occured kill and restart explorer.exe so the key will take place.
if %ERRORLEVEL%==0 (
    taskkill /im explorer.exe /f
    start explorer.exe
)

