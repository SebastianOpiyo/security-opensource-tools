# If the first script fails to work, resort to this step.

# 1. Disable and stop WMI service
sc config winmgmt start= disabled
net stop winmgmt

# 2. Rename the repository
# - located at (%windir%\System32\wbem\repository) to repository.old

# 3. Re-enable the WMI service and reboot
sc config winmgmt start= auto

# 4. Reboot the machine

# If the above doesn't work try chkdsk, sfc, and dism. Additionally you can try a Windows Repair Install.
# use the link below for directions
# https://www.easeus.com/computer-instruction/fix-a-corrupted-user-profile-windows-10.html

# 5. Run Windows profile repair with SFC Scan & DISM, Run the following commands
<#
sfc/scannow
DISM/Online/Cleanup-Image/RestoreHealth
#> 
