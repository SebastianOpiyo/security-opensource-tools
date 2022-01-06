# Created by Sebastian Opiyo
# Date 06/1/2021

gwmi win32_UserAccount | Select Name | Out-File C:\usersprofile.txt
# Get-CimInstance -ClassName win32_userprofile | Select-Object -First 1  # this numnber can be increamented to list more users

foreach($UserProfile in (Get-Content C:\usersprofile.txt) ) {
    Write-Host "Profile Name is: $UserProfile"
}


