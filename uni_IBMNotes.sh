#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall IBM Notes.

if [ -d /Applications/Lotus\ Notes.app ]
then
    lotusnotes=$(ps aux | grep 'Lotus Notes' -c)
    echo "Lotus Notes version 8 is installed on this computer"
    #Identify the version 8 of Lotus Notes is installed on this computer.
    if [ $lotusnotes -gt 1 ]
    then
        # Kill Lotus Notes version 8 and remove Lotus Notes.
        echo "Lotus Notes version 8 is currently running on this computer"
        lotusnotesps=$(ps aux | grep 'Lotus Notes' | grep -v grep | awk '{print $2}')
        kill $lotusnotesps
        echo "Terminating Lotus Notes app"
        sleep 3
        echo "Removing Lotus Notes app"
        rm -rf /Applications/Lotus\ Notes.app
        rm -rf /Applications/Lotus\ Application\ Support
        rm -rf ~/Library/Application\ Support/Lotus\ Notes\ Data
        rm -rf ~/Library/Preferences/Notes\ Preferences
        rm -rf /Library/Receipts/Lotus\ Notes\ Installer_English.pkg
        rm -rf /Library/Receipts/Lotus\ Notes\ Installer.pkg
        rm -rf /Library/Receipts/xpdcoreinstaller.pkg
        echo "Uninstall Completed!"
    else
        echo "Removing Lotus Notes app"
        rm -rf /Applications/Lotus\ Notes.app
        rm -rf /Applications/Lotus\ Application\ Support
        rm -rf ~/Library/Application\ Support/Lotus\ Notes\ Data
        rm -rf ~/Library/Preferences/Notes\ Preferences
        rm -rf /Library/Receipts/Lotus\ Notes\ Installer_English.pkg
        rm -rf /Library/Receipts/Lotus\ Notes\ Installer.pkg
        rm -rf /Library/Receipts/xpdcoreinstaller.pkg
        echo "Uninstall Completed!"
    fi
    exit 0; #Exit
elif [ -d /Applications/IBM\ Notes.app ]
then
    ibmnotes=$(ps aux | grep 'IBM Notes' -c)
    echo "IBM Notes version 9 is installed on this computer"
    #Identify the verison 9 of IBM Notes is installed on this computer.
    if [ $ibmnotes -gt 1 ]
    then
        # Kill IBM Notes version 9 and remove IBM Notes.
        echo "IBM Notes version 9 is currently running on the computer"
        ibmnotesps=$(ps aux | grep 'IBM Notes' | grep -v grep | awk '{print $2}')
        kill $ibmnotesps
        echo "Terminating IBM Notes app"
        sleep 3
        echo "Removing IBM Notes app"
        rm -rf /Applications/IBM\ Notes.app
        rm -rf /Applications/IBM\ Application\ Support
        rm -rf ~/Library/Application\ Support/IBM\ Notes\ Data
        rm -rf ~/Library/Preferences/Notes\ Preferences
        rm -rf /Library/Receipts/IBM\ Notes\ Installer.pkg
        rm -rf /Library/Receipts/IBM\ Notes\ Installer_English.pkg
        rm -rf /Library/Receipts/xpdcoreinstaller.pkg
        echo "Uninstall Completed!"
    else
        echo "Removing IBM Notes app"
        rm -rf /Applications/IBM\ Notes.app
        rm -rf /Applications/IBM\ Application\ Support
        rm -rf ~/Library/Application\ Support/IBM\ Notes\ Data
        rm -rf ~/Library/Preferences/Notes\ Preferences
        rm -rf /Library/Receipts/IBM\ Notes\ Installer.pkg
        rm -rf /Library/Receipts/IBM\ Notes\ Installer_English.pkg
        rm -rf /Library/Receipts/xpdcoreinstaller.pkg
        echo "Uninstall Completed!"        
    fi
    exit 0; #Exit
else
    echo "IBM Notes or Lotus Notes is not installed on this computer."
fi
exit 0; #Exit