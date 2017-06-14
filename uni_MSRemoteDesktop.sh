#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall Microsoft Remote Desktop.

MSRemote=$(ps aux | grep 'Microsoft Remote Desktop' -c)
if [ $MSRemote -gt 1 ]
    then
        echo "Microsoft Remote Desktop app is currently running on the computer"
        #Terminate Microsoft Remote Desktop app and uninstall Microsoft Remote Desktop and its configuration files.
        killall 'Microsoft Remote Desktop'
        echo "Terminating Microsoft Remote Desktop app"
        sleep 2
        rm -rf /Applications/Microsoft\ Remote\ Desktop.app
        rm -rf ~/Library/Containers/com.microsoft.rdc.mac
        rm -rf ~/Library/Application\ Scripts/com.microsoft.rdc.mac
        rm -rf ~/Library/Preferences/com.microsoft.rdc.mac.plist
        echo "Uninstall Completed"
    else
        echo "Microsoft Remote Desktop app is not running on the computer"
        #Uninstall Microsoft Remote Desktop and its configuration files.
        rm -rf /Applications/Microsoft\ Remote\ Desktop.app
        rm -rf ~/Library/Containers/com.microsoft.rdc.mac
        rm -rf ~/Library/Application\ Scripts/com.microsoft.rdc.mac
        rm -rf ~/Library/Preferences/com.microsoft.rdc.mac.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit