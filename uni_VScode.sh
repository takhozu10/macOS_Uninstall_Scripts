#!/bin/bash
#
# # #
# MIT License
#
# Copyrigth (c) 2018 Big Lots Stores, Inc.
#
#   Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
#   associated documentation files (the "Software"), to deal in the Software without restriction, including
#   without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#   copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
#   following conditions:
#
#   The above copyright notice and this permission notice shall be included in all copies or substantial
#   portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
#   NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
#   IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
#   WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
#   SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# # #

# # #
# Uninstall Visual Studio Code
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: 05/18/2017
# Modified on: 06/19/2018
# Version: 0.0.1
# # #

VSCode=$(ps aux | grep 'Visual Studio Code' -c)
if [ $VSCode -gt 1 ]
    then
        echo "The Visual Studio Code app is currently running on the computer"
        #Terminate Visual Studio Code app and uninstall Visual Studio Code and its configuration files.
        #Assign VS Code process ID to visualps variable. Run kill command using the process ID to terminate the application.
        visualps=$(ps aux | grep 'Visual Studio Code.app/Contents/MacOS/Electron' | grep -v grep | awk '{print $2}')
        kill $visualps
        echo "Terminating Visual Studio Code app"
        sleep 3
        rm -rf /Applications/Visual\ Studio\ Code.app
        rm -rf ~/Library/Application\ Support/Code
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
