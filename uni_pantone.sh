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
# Uninstall Pantone Color Manager
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: Julsy 19, 2018
# Modified on:
# Version: 0.0.1
# # #

pantone=$(ps aux | grep 'PANTONE' -c)
if [ $pantone -gt 1 ]
    then
        echo "Pantone Color Manager is currently running on the computer"
        #Terminate Pantone Color Manager.
        killall 'PANTONE Color Manager'
        echo "Terminating Pantone Color Manager"
        sleep 3
        #Uninstall PANTONE Color Manager its configuration files.
        rm -rf /Applications/PANTONE\ Color\ Manager.app
        rm -rf ~/Library/Application\ Support/com.xrite.pantonecolormanager
        rm -rf ~/Library/Caches/com.xrite.pantonecolormanager
        rm -rf ~/Library/Logs/PANTONE/ColorManager/PantoneColorManager.log*
        rm -rf ~/Library/Preferences/com.xrite.pantonecolormanager.plist
        echo "Uninstall Completed"
    else
        echo "Pantone Color Manager is not running on the computer"
        #Uninstall PANTONE Color Manager its configuration files.
        rm -rf /Applications/PANTONE\ Color\ Manager.app
        rm -rf ~/Library/Application\ Support/com.xrite.pantonecolormanager
        rm -rf ~/Library/Caches/com.xrite.pantonecolormanager
        rm -rf ~/Library/Logs/PANTONE/ColorManager/PantoneColorManager.log*
        rm -rf ~/Library/Preferences/com.xrite.pantonecolormanager.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit
