#!/bin/bash
#
#
#Created by Tak Hozumi.
#Big Lots, Inc.
#Uninstall DBeaver.

if [ -d /Applications/DBeaver.app ]
then
    dbeaver=$(ps aux | grep 'DBeaver' -c)
    echo "DBeaver is installed on this computer."
    # Identify this app is installed. 
    if [ $dbeaver -gt 1 ]
    then
        # DBeaver is currently running on this computer.
        echo "DBeaver is currently running on this computer"
        killall dbeaver
        echo "Terminating DBeaver"
        sleep 3
        echo "Removing DBeaver app"
        rm -rf /Applications/DBeaver.app
        rm -rf ~/Library/Preferences/org.jkiss.dbeaver.core.product.plist
        rm -rf ~/Library/Saved\ Application\ State/org.jkiss.dbeaver.core.product.savedState
        echo "Uninstall Completed!"
    else
        echo "Removing DBeaver app"
        rm -rf /Applications/DBeaver.app
        rm -rf ~/Library/Preferences/org.jkiss.dbeaver.core.product.plist
        rm -rf ~/Library/Saved\ Application\ State/org.jkiss.dbeaver.core.product.savedState
        echo "Uninstall Completed!"
    fi
    exit 0; #Exit
else
    echo "DBeaver is not installed on this computer."
fi
exit 0; #Exit