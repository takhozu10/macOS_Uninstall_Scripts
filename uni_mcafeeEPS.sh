#!/bin/bash
# Uninstall McAfee End Point Security for Mac

sudo /Library/McAfee/cma/scripts/uninstall.sh

sudo rm -rf /Applications/McAfee\ Endpoint\ Security\ for\ Mac.app/
sudo rm -rf /Library/LaunchDaemons/com.mcafee.ssm.Eupdate.plist
sudo rm -rf /Library/LaunchDaemons/com.mcafee.ssm.ScanFactory.plist
sudo rm -rf /Library/LaunchDaemons/com.mcafee.ssm.ScanManager.plist
sudo rm -rf /Library/LaunchDaemons/com.mcafee.virusscan.fmpd.plist
sudo rm -rf /Library/LaunchAgents/com.mcafee.menulet.plist
sudo rm -rf /Library/LaunchAgents/com.mcafee.reporter.plist
sudo rm -rf /Library/Application\ Support/McAfee