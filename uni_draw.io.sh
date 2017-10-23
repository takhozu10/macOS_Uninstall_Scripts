#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall draw.io.

if [ -d /Applications/draw.io.app ]
then
    draw=$(ps aux | grep 'draw.io' -c)
    echo "draw.io is installed on this computer."
    # Identify this app is installed. 
    if [ $draw -gt 1 ]
    then
        # draw.io is currently running on this computer.
        echo "draw.io is currently running on this computer"
        drawps=$(ps aux | grep 'draw.io.app/Contents/MacOS/draw.io' | grep -v grep | awk '{print $2}')
        kill -9 $drawps
        echo "Terminating draw.io"
        sleep 3
        echo "Removing draw.io app"
        rm -rf /Applications/draw.io.app
        rm -rf ~/Library/Application\ Support/draw.io
        rm -rf ~/Library/Logs/draw.io
        rm -rf ~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist
        rm -rf ~/Library/Preferences/com.jgraph.drawio.desktop.plist
        rm -rf ~/Library/Saved\ Application\ State/com.jgraph.drawio.desktop.savedState
        echo "Uninstall Completed!"
    else
        echo "Removing draw.io app"
        rm -rf /Applications/draw.io.app
        rm -rf ~/Library/Application\ Support/draw.io
        rm -rf ~/Library/Logs/draw.io
        rm -rf ~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist
        rm -rf ~/Library/Preferences/com.jgraph.drawio.desktop.plist
        rm -rf ~/Library/Saved\ Application\ State/com.jgraph.drawio.desktop.savedState
        echo "Uninstall Completed!"
    fi
    exit 0; #Exit
else
    echo "Draw.io is not installed on this computer."
fi
exit 0; #Exit