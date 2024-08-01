# Win11Tweaks
 Various Win11 tweaks... tweaked for Sysadmins

* ContextMenu (works for current user)

    Batch file to enable the Win10 and previous versions, more useful context menu. When executed it will flash the desktop as the explorer process is killed and restarted to force the change to take place. 
    No logout or restart is needed.

* Taskbar Location (works for current user)

    It is possible to move the Windows 11 taskbar. We don't know for how long Microsoft is going to continue
    allowing us to move the taskbar, but as of 2022-07-25, it is still possible.

* Command Line For Admins (requires admin rights, works for all users that have credentials to elevate)

    Did you ever want to differentiate a command line that runs under Administrator privileges beyond just
    the word "Administrator" on the window title? Well now you can. How about a blood red background color
    with white letters? This has been working for a very long time. I remember using it on Windows 7.
    
    (2023 update) If you're using PlatformIO, it will start failing because this 'hack' is setting the errorlevel to 1. 

* Cleanup WinSxS (requires admin rights)

    Are you on a laptop with limited disk storage because you have no alternative? WinSxS (what used to be 
    called DLL Hell) tends to get pretty huge the more applications you install. This handly little command
    can do some much needed cleaning. Use at your own risk. It works for me, but I am religiously careful
    when it comes to installing things on my computers and servers. 

* Enable/Install Hyper-V and the ability to run any OS in the hypervisor (requires admin rights)

    Run this batch file to install all the necessary components to run Hyper-V on your Windows 11 computer.
    It works even in Windows 11 Home edition. (Requires virtualization to be enabled in your BIOS/UEFI and 
    a restart)

* For when Edge doesn't close even if you have turned off background processes and disabled Startup Boost

    There is a group policy setting that controls whether Edge can close all its background processes once
    all the windows are closed. One might think that turning off the background processes and disabling
    startup boost would be enough, but apparently it's not. This is something that has been bothering me
    for a long time, and finally found an answer. You can set this with a GPO if you have the appropriate
    environment, or you can use the included batch file to set the appropriate registry setting that 
    corresponds with the GPO setting.

    This setting will effectively disable Microsoft Copilot. 

* Check if a specific machine is affected by the vulnerability named PKFail that was [disclosed](https://arstechnica.com/security/2024/07/secure-boot-is-completely-compromised-on-200-models-from-5-big-device-makers/) on 7/25/2024

    The script requires admin privileges to run and will display a string with the computer name and whether the 
    computer it was executed on is vulnerable (meaning, it contains the leaked private key that could compromise 
    Secureboot on the device).

    *Example.*
    
    PS C:\> .\PKFailCheck.ps1
    DESKTOP1 False

    PS C:\> .\PKFailCheck.ps1
    DESKTOP2 True