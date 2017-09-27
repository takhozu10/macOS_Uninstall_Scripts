#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall IBM Notes.

notes=$(ps aux | grep 'IBM Notes' -c)
if [ test -d /Applications/Lotus Notes.app ]
    then
        lotusnotes=$(ps aux | grep 'Lotus Notes' -c)
        if [ $lotusnotes -gt 1 ]
            then
            echo "Lotus Notes version 8 is installed on this computer"
            #Identified that the older verison of Lotus Notes is installed on this computer.
            lotusnotesps=$(ps aux | grep 'Lotus Notes' | grep -v grep | awk '{print $2}')
            kill $lotusnotes
            echo "Terminating Lotus Notes app"
            sleep 3
            rm -rfv /Applications/Lotus\ Notes.app
            rm -rfv /Applications/Lotus\ Application\ Support
            rm -rfv ~/Library/Application\ Support/Lotus\ Notes\ Data
            rm -rfv ~/Library/Preferences/Notes\ Preferences
            rm -rfv /Library/Receipts/Lotus\ Notes\ Installer_English.pkg
            rm -rfv /Library/Receipts/Lotus\ Notes\ Installer.pkg
            rm -rfv /Library/Receipts/xpdcoreinstaller.pkg

if [ $notes -gt 1 ]
    then
        echo "IBM Notes app is currently running on the computer"
        #Terminate IBM Notes app and uninstall IBM Notes and its configuration files.
        ibmnotes=$(ps aux | grep 'IBM Notes' | grep -v grep | awk '{print $2}')
        kill $ibmnotes
        echo "Terminating IBM notes app"
        sleep 3
        rm -rfv /Applications/IBM\ Notes.app
        rm -rfv ~/Library/Application\ Support/IBM\ Notes\ Data
        rm -rfv ~/Library/Preferences/Notes\ Preferences
        echo "Uninstall Completed"
    else
        echo "The Visual Studio Code app is not running on the computer"
        #Uninstall IBM Notes and its configuration files.
        
        echo "Uninstall Completed"
    fi
exit 0; #Exit