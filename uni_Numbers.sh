#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall Numbers.

numbers=$(ps aux | grep 'Numbers.app' -c)
if [ $numbers -gt 1 ]
    then
        echo "The Numbers app is currently running on the computer"
        #Terminate Numbers app and uninstall Numbers and its configuration files.
        killall Numbers
        echo "Terminating Numbers app"
        sleep 3
        rm -rf /Applications/Numbers.app
        rm -rf ~/Library/Application\ Scripts/com.apple.iWork.Numbers
        rm -rf ~/Library/Containers/com.apple.iWork.Numbers
        rm -rf ~/Library/Preferences/com.apple.iWork.Numbers.plist
        echo "Uninstall Completed"
    else
        echo "The Numbers app is not running on the computer"
        #Uninstall Numbers and its configuration files.
        rm -rf /Applications/Numbers.app
        rm -rf ~/Library/Application\ Scripts/com.apple.iWork.Numbers
        rm -rf ~/Library/Containers/com.apple.iWork.Numbers
        rm -rf ~/Library/Preferences/com.apple.iWork.Numbers.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit