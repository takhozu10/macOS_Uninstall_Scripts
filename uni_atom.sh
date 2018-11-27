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
# Uninstall Atom
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: July 23, 2018
# Modified on: July 25, 2018
# Version: 0.0.1
# # #

atom=$(ps aux | grep 'Atom.app/Contents/MacOS/Atom' -c)
if [ $atom -gt 1 ]
    then
        echo "Atom is currently running on the computer"
        #Terminate the Atom app and uninstall Atom and its configuration files.
        killall Atom
        echo "Terminating Atom"
        sleep 3
        rm -rf /Applications/Atom.app
        rm -rf ~/Library/Application\ Support/Atom
        rm -rf ~/Library/Caches/com.github.atom
        rm -rf ~/Library/Caches/com.github.atom.ShipIt
        rm -rf ~/Library/Logs/Atom
        rm -rf ~/Library/Preferences/com.github.atom.helper.plist
        rm -rf ~/Library/Preferences/com.github.atom.plist
        echo "Uninstall Completed"
    else
        echo "Atom is not running on the computer"
        #Uninstall Atom and its configuration files.
        rm -rf /Applications/Atom.app
        rm -rf ~/Library/Application\ Support/Atom
        rm -rf ~/Library/Caches/com.github.atom
        rm -rf ~/Library/Caches/com.github.atom.ShipIt
        rm -rf ~/Library/Logs/Atom
        rm -rf ~/Library/Preferences/com.github.atom.helper.plist
        rm -rf ~/Library/Preferences/com.github.atom.plist
        echo "Uninstall Completed"
    fi
exit 0; #Exit
