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
# Uninstall Skype For Business
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: July 23, 2018
# Modified on:
# Version: 0.0.1
# # #

skype=$(ps aux | grep 'Skype for Business' -c)
if [ $skype -gt 1 ]
    then
        echo "Skype for Business is currently running on the computer"
        #Terminate Skype for Business.
        killall 'Skype for Business'
        echo "Terminating Skype for Business"
        sleep 3
        #Uninstall Skype for Business and its configuration files.
        rm -rf /Applications/Skype\ for\ Business.app
        rm -rf ~/Library/Application\ Scripts/com.microsoft.SkypeForBusiness
        rm -rf ~/Library/Containers/com.microsoft.SkypeForBusiness
        rm -rf ~/Library/Preferences/com.microsoft.SkypeForBusiness.plist
        rm -rf ~/Library/Saved\ Application\ State/com.microsoft.SkypeForBusiness.savedState
        rm -rf /var/db/receipts/com.microsoft.SkypeForBusiness.bom
        rm -rf /var/db/receipts/com.microsoft.SkypeForBusiness.plist
        echo "Uninstall Completed"
    else
        echo "VLC is not running on the computer"
        #Uninstall Skype for Business and its configuration files.
        rm -rf /Applications/Skype\ for\ Business.app
        rm -rf ~/Library/Application\ Scripts/com.microsoft.SkypeForBusiness
        rm -rf ~/Library/Containers/com.microsoft.SkypeForBusiness
        rm -rf ~/Library/Preferences/com.microsoft.SkypeForBusiness.plist
        rm -rf ~/Library/Saved\ Application\ State/com.microsoft.SkypeForBusiness.savedState
        rm -rf /var/db/receipts/com.microsoft.SkypeForBusiness.bom
        rm -rf /var/db/receipts/com.microsoft.SkypeForBusiness.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit
