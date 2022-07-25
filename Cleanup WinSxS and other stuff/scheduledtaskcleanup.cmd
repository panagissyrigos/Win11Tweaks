@echo off
rem for more info go to: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/clean-up-the-winsxs-folder?view=windows-11
schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"