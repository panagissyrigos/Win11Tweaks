@echo off
reg add "HKLM\Software\Microsoft\Command Processor" /v AutoRun /d "reg query HKU\S-1-5-19 >nul 2>nul &&  (color 4F) || (color 07)"