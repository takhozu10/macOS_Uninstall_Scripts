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
# Uninstall Eclipse for Java Developers
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: 06/18/2018
# Modified on: 
# Version: 0.0.1
# # #

eclipse=$(ps aux | grep 'Eclipse' -c)
if [ $eclipse -gt 1 ]
then
    echo "The Eclipse app is currently running on the computer."
    #Terminating Eclipse app
    sudo killall eclipse
    echo "Terminating Eclipse app"
    sleep 3
    rm -rf /Applications/Eclipse.app
    rm -rf ~/Library/Caches/org.eclipse.platform.ide
    rm -rf ~/Library/Preferences/org.eclipse.platform.ide.plist
    rm -rf ~/Library/Saved\ Application\ State/org.eclipse.platform.ide.savedState
    echo "Uninstall Completed"
else
    echo "The Eclipse app is not running on the computer."
    rm -rf /Applications/Eclipse.app
    rm -rf ~/Library/Caches/org.eclipse.platform.ide
    rm -rf ~/Library/Preferences/org.eclipse.platform.ide.plist
    rm -rf ~/Library/Saved\ Application\ State/org.eclipse.platform.ide.savedState
    echo "Uninstall Completed"
fi
exit 0;