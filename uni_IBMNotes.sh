#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall IBM Notes.

notes=$(ps aux | grep 'Visual Studio Code' -c)
if [ $notes -gt 1 ]
    then
        echo "IBM Notes app is currently running on the computer"
        #Terminate IBM Notes app and uninstall IBM Notes and its configuration files.
        visualps=$(ps aux | grep 'Visual Studio Code.app/Contents/MacOS/Electron' | grep -v grep | awk '{print $2}')
        kill $visualps
        echo "Terminating Visual Studio Code app"
        sleep 3
        rm -rf /Applications/IBM\ Notes.app
        rm -rf ~/Library/Application\ Support/IBM\ Notes\ Data
        rm -rf ~/Library/Preferences/Notes\ Preferences
        echo "Uninstall Completed"
    else
        echo "The Visual Studio Code app is not running on the computer"
        #Uninstall IBM Notes and its configuration files.
        
        echo "Uninstall Completed"
    fi
exit 0; #Exit