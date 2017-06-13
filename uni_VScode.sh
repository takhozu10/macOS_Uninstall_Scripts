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
        ### Remove VS Code app goes here.
        echo "Uninstall Completed"
    else
        echo "The Visual Studio Code app is not running on the computer"
        #Uninstall Visual Studio Code and its configuration files.
        ### Remove VS Code app goes here.
        echo "Uninstall Completed"
    fi
exit 0; #Exit