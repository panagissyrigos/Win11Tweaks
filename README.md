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

* Cleanup WinSxS (requires admin rights)

    Are you on a laptop with limited disk storage because you have no alternative? WinSxS (what used to be 
    called DLL Hell) tends to get pretty huge the more applications you install. This handly little command
    can do some much needed cleaning. Use at your own risk. It works for me, but I am religiously careful
    when it comes to installing things on my computers and servers. 

* Enable/Install Hyper-V and the ability to run any OS in the hypervisor (requires admin rights)

    Run this batch file to install all the necessary components to run Hyper-V on your Windows 11 computer.
    It works even in Windows 11 Home edition. (Requires virtualization to be enabled in your BIOS/UEFI and 
    a restart)

