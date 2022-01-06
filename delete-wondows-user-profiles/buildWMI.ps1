# Created by Sebastian Opiyo
# Date 06/1/2022

# What this script does:
<#
    • Disable and stop the winmgmt service
    • Remove or rename C:\Windows\System32\wbem\repository
    • Enable and start the winmgmt service
    • Open Command Prompt as Administrator
    • Run the following commands:
#>

# Note: Its important to backup the WMI repository, just in case.
<#
    - If you wish to enhance this script, you better have a read on CIM or WMI
    - Web Based Enterprise Management (WBEM)
#>

# First Solution
<#
    cd C:\Windows\System32\wbem\
    for (/f %s in ('dir /b *.mof')){do mofcomp %s} 
    NOTE: This will take a minute or so to complete.
    for (/f %s in ('dir /b en-us\*.mfl')) {do mofcomp en-us\%s} 
#>

# Second Solution
# Disable and stop WMI service
sc config winmgmt start= disabled
net stop winmgmt

# Reset the repository
Winmgmt /salvagerepository %windir%\System32\wbem
Winmgmt /resetrepository %windir%\System32\wbem

# Re-enable the WMI service and reboot
sc config winmgmt start= auto

