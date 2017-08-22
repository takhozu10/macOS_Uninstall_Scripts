#!/bin/sh
#
#
#Created by Tak Hozumi.
#Uninstall Microsoft Lync

#Set Variable
lync=$(ps aux | grep 'Lync' -c);

#If Lync is open, kill and remove Lync
if [ $lync -gt 1 ];
then
killall Microsoft\ Lync;
rm -rf /Applications/Microsoft\ Lync.app;
rm -rf ~/Library/Caches/com.microsoft.Lync;
rm -rf ~/Library/Cookies/com.microsoft.Lync.binarycookies;
rm -rf ~/Library/Preferences/com.microsoft.Lync.plist;
exit 0;

else
rm -rf /Applications/Microsoft\ Lync.app;
rm -rf ~/Library/Caches/com.microsoft.Lync;
rm -rf ~/Library/Cookies/com.microsoft.Lync.binarycookies;
rm -rf ~/Library/Preferences/com.microsoft.Lync.plist;
exit 0;

fi