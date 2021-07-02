#!/bin/bash

# Aurthor: Sebastian Opiyo
# Date Created: July 02, 2021
# Date Modified: July 02, 2021
# Descr: A script to show a history of wifi connected to and their passwords via bash.


# Start the if else block
echo Wifi SSID and their Passwords Exposed!
echo Here we go!
echo
echo /-----------------------------------------------/
echo 
echo Getting into system wifi connections history
echo
cd /etc/NetworkManager/system-connections/
echo 
echo Listing all the wifi ever connected to
echo
ls -a -1
echo
echo CHOOSE THE WIFI SSID THAT YOU NEED THE PASSWORD REVEALED.
echo Paste it at the prompt below:
echo
read wifissid
echo your choice: $wifissid
echo
echo Your password is the value of psk, copy that!
# we can improve this section, instead of printing all the unwanted staff we
# print the psk value. 
sudo cat $wifissid
echo
echo done!!!!!
echo End of Script
