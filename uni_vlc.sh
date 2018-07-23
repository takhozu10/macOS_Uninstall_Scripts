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
# Uninstall VLC
#
#
# Written by: Tak Hozumi : End User Support Engineer : Big Lots Stores, Inc.
#
# Created on: July 23, 2018
# Modified on:
# Version: 0.0.1
# # #

vlc=$(ps aux | grep 'VLC' -c)
if [ $vlc -gt 1 ]
    then
        echo "VLC is currently running on the computer"
        #Terminate VLC.
        killall 'VLC'
        echo "Terminating VLC"
        sleep 3
        #Uninstall VLC and its configuration files.
        rm -rf /Applications/VLC.app
        rm -rf ~/Library/Application\ Support/org.videolan.vlc
        rm -rf ~/Library/Caches/org.videolan.vlc
        rm -rf ~/Library/Preferences/org.videolan.vlc
        rm -rf ~/Library/Preferneces/org.videolan.vlc.plist
        rm -rf ~/Library/Saved\ Application\ State/org.videolan.vlc.savedState
        echo "Uninstall Completed"
    else
        echo "VLC is not running on the computer"
        #Uninstall VLC and its configuration files.
        rm -rf /Applications/VLC.app
        rm -rf ~/Library/Application\ Support/org.videolan.vlc
        rm -rf ~/Library/Caches/org.videolan.vlc
        rm -rf ~/Library/Preferences/org.videolan.vlc
        rm -rf ~/Library/Preferneces/org.videolan.vlc.plist
        rm -rf ~/Library/Saved\ Application\ State/org.videolan.vlc.savedState
        echo "Uninstall Completed"
    fi
exit 0; #Exit
