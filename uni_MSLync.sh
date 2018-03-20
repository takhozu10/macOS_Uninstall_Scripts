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
# This script will uninstall Microsoft Lync 2011 from Mac. It removes all files recommened by Microsoft.
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: January 1, 2017
# Modified on: Feburary 21, 2018
# Version: 0.2.1
# # #

#Set Variable
lync=$(ps aux | grep 'Lync' -c)

#If Lync is open, kill and remove Lync
if [ $lync -gt 1 ]
then
    killall Microsoft\ Lync
    rm -rf /Applications/Microsoft\ Lync.app
    rm -rf ~/Library/Caches/com.microsoft.Lync
    rm -rf ~/Library/Cookies/com.microsoft.Lync.binarycookies
    rm -rf ~/Library/Preferences/com.microsoft.Lync.plist
    exit 0
else
    rm -rf /Applications/Microsoft\ Lync.app
    rm -rf ~/Library/Caches/com.microsoft.Lync
    rm -rf ~/Library/Cookies/com.microsoft.Lync.binarycookies
    rm -rf ~/Library/Preferences/com.microsoft.Lync.plist
    exit 0
fi

#Retreive currently logged in user.
loggedinuser=$(stat -f%Su /dev/console)

# Remove com.microsoft.Lync.plist preferences file if exists. 
if [ -e /Users/$loggedinuser/Library/Preferences/com.microsoft.Lync.plist ]
then 
    echo "The file exists at this location /Users/$loggedinuser/Library/Preferences/com.microsoft.Lync.plist"
    rm -rf /Users/$loggedinuser/Library/Preferences/com.microsoft.Lync.plist
    echo "File /Users/$loggedinuser/Library/Preferences/com.microsoft.Lync.plist removed."
fi

# Remove Microsoft Lync Registration DB files if exists.
mslyncdbs=($(ls /Users/$loggedinuser/Library/Preferences/ByHost/MicrosoftLyncRegistrationDB.*))
for i in "${mslyncdbs[@]}"
do
    echo "Removed $i"
    rm -rf $i
done

# Remove Microsoft Lync log files if exists. 
mslynclogs=($(ls /Users/$loggedinuser/Library/Logs/Microsoft-Lync-*))
for x in "${mslynclogs[@]}"
do
    echo "Removed $x"
    rm -rf $x
done

# Remove Microsoft Lync Data folder if exists. 
if [ -d /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ Data ]
then
    echo "The file exists at this location /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ Data"
    rm -rf /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ Data
fi

# Remove Microsoft Lync History folder if exists.
if [ -d /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ History ]
then
    echo "The file exists at this location /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ History"
    rm -rf /Users/$loggedinuser/Documents/Microsoft\ User\ Data/Microsoft\ Lync\ History
fi

# Remove Microsoft Lync Keychain item if exists. 
if [ -e /Users/$loggedinuser/Library/Keychains/OC_KeyContainer* ]
then
    echo "The file exists at this location /Users/$loggedinuser/Library/Keychains/OC_KeyContainer*"
    rm -rf /Users/$loggedinuser/Library/Keychains/OC_KeyContainer*
fi