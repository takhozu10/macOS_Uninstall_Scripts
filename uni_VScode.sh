#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall VSCode.

VSCode=$(ps aux | grep 'Visual Studio Code' -c)
if [ $VSCode -gt 1 ]
    then
        echo "The Visual Studio Code app is currently running on the computer"
        #Terminate Visual Studio Code app and uninstall Visual Studio Code and its configuration files.
        killall Electron
        echo "Terminating Visual Studio Code app"
        sleep 3
        rm -rf /Applications/Visual\ Studio\ Code.app
        rm -rf ~/Library/Caches/com.microsoft.VSCode
        rm -rf ~/Library/Caches/com.microsoft.VSCode.ShipIt
        rm -rf ~/Library/Preferences/com.microsoft.VSCode.helper.plist
        rm -rf ~/Library/Preferences/com.microsoft.VSCode.plist
        rm -rf ~/Library/Saved\ Application\ State/com.microsoft.VSCode.savedState
        echo "Uninstall Completed"
    else
        echo "The Visual Studio Code app is not running on the computer"
        #Uninstall Visual Studio Code and its configuration files.
        rm -rf /Applications/Visual\ Studio\ Code.app
        rm -rf ~/Library/Caches/com.microsoft.VSCode
        rm -rf ~/Library/Caches/com.microsoft.VSCode.ShipIt
        rm -rf ~/Library/Preferences/com.microsoft.VSCode.helper.plist
        rm -rf ~/Library/Preferences/com.microsoft.VSCode.plist
        rm -rf ~/Library/Saved\ Application\ State/com.microsoft.VSCode.savedState
        echo "Uninstall Completed"
    fi
exit 0; #Exit