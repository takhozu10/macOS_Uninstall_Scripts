#!/bin/sh

#Set Variable
sfb=$(ps aux | grep 'Skype for Business' -c);

#If SfB is open, kill and remove Lync
if [ $sfb -gt 1 ];
then
killall "Skype for Business";

#Remove Skype for Business App
rm -rf /Applications/Skype\ For\ Business.app
rm -rf ~/Library/Application\ Support/Skype\ for\ Business
rm -rf ~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.skypeforbusinesstap.sfl
rm -rf ~/Library/Application\ Support/com.microsoft.SkypeForBusinessTAP
rm -rf ~/Library/Caches/com.microsoft.SkypeForBusinessTAP
rm -rf ~/Library/Cookies/com.microsoft.SkypeForBusinessTAP.binarycookies
rm -rf ~/Library/Logs/com.microsoft.SkypeForBusinessTAP/
rm -rf ~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist

exit 0;

else
#Remove Skype for Business App
rm -rf /Applications/Skype\ For\ Business.app
rm -rf ~/Library/Application\ Support/Skype\ for\ Business
rm -rf ~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.skypeforbusinesstap.sfl
rm -rf ~/Library/Application\ Support/com.microsoft.SkypeForBusinessTAP
rm -rf ~/Library/Caches/com.microsoft.SkypeForBusinessTAP
rm -rf ~/Library/Cookies/com.microsoft.SkypeForBusinessTAP.binarycookies
rm -rf ~/Library/Logs/com.microsoft.SkypeForBusinessTAP/
rm -rf ~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist
exit 0;

fi