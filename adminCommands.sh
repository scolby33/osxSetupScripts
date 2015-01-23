#!/usr/bin/env bash
# adminCommands.sh - set some OSX preferences that are only available at the command line
# usage: sudo ./adminCommands.sh
# Written in 2015 by Scott Colby

# Ask for sudo password up-front
sudo -v
 
# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Disable the sudden motion sensor as it’s not useful for SSDs
sudo pmset -a sms 0

# Increase standbydelay to 12 hours from default 70 min for faster wake times
sudo pmset -a standbydelay 43200

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# close everything we have changed settings for
for app in "cfprefsd" "Finder" "SystemUIServer"; do
    killall "${app}" > /dev/null 2>&1
done
