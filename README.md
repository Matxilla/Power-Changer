# Power-Changer
just download and extract then change the following:

-Custom.bat can be changed to whatever you want

-in both Balanced.bat and Custom.bat you have to set a powerplan id which you can get by running *powecfg /list*

-in the Power Changer.ps1 under line 2 you can add, remove and rename options

-at line 48 are the options, you can change: 

Start-Process ".\Balanced.bat"

and Write-Host "Applying Balanced Profile" to change the path and the running message

-and last i reccomend using the link included, it should contain:

Path: *C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "location of the Power Changer folder"*

Run inside: *"Location of the Power Changer folder"*
