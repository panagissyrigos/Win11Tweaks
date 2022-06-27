@echo off
echo Setting registry key
reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InProcServer32 /ve /f
REM If no errors occured kill and restart explorer.exe so the key will take place.
if %ERRORLEVEL%==0 (
    taskkill /im explorer.exe /f
    start explorer.exe
)