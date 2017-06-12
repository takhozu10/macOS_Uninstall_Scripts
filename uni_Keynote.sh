#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall Keynote.

keynote=$(ps aux | grep 'Keynote.app' -c)
if [ $keynote -gt 1 ]
    then
        echo "The keynote app is currently running on the computer"
        #Terminate Keynote app and uninstall Keynote and its configuration files.
        killall Keynote
        echo "Terminating Keynote app"
        sleep 3
        rm -rf /Applications/Keynote.app
        rm -rf ~/Library/Application\ Scripts/com.apple.iWork.Keynote
        rm -rf ~/Library/Containers/com.apple.iWork.Keynote
        rm -rf ~/Library/Preferences/com.apple.iWork.Keynote.plist
        echo "Uninstall Completed"
    else
        echo "The Keynote app is not running on the computer"
        #Uninstall Keynote and its configuration files.
        rm -rf /Applications/Keynote.app
        rm -rf ~/Library/Application\ Scripts/com.apple.iWork.Keynote
        rm -rf ~/Library/Containers/com.apple.iWork.Keynote
        rm -rf ~/Library/Preferences/com.apple.iWork.Keynote.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit