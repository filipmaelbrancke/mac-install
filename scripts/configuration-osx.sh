echo
echo 'Customizing OS X configuration'

if [ -z "${fullname}" ]; then
    FULL_NAME=$1
else
    FULL_NAME=$fullname
fi
if [ -z "${emailaddress}" ]; then
    EMAIL_ADDRESS=$2
else
    EMAIL_ADDRESS=$emailaddress
fi
if [ -z "${phonenumber}" ]; then
    PHONE_NUMBER=$1
else
    PHONE_NUMBER=$phonenumber
fi


# hide the dock
defaults write com.apple.dock autohide -bool true
killall Dock

# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#to revert use defaults -currentHost delete com.apple.ImageCapture disableHotPlug

# Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Finder: Shows all extensions
defaults write com.apple.finder AppleShowAllExtensions -boolean true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Open and save files as UTF–8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Change Screenshot location to ~/Downloads/Screenshots
if [ ! -d "$HOME/Downloads/Screenshots" ]; then
  mkdir "$HOME/Downloads/Screenshots"
fi
defaults write com.apple.screencapture location $HOME/Downloads/Screenshots; killall SystemUIServer

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Configuring the login screen for user $USER with $EMAIL_ADDRESS and $PHONE_NUMBER"
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Found this computer? Please contact $FULL_NAME at $EMAIL_ADDRESS - $PHONE_NUMBER"

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Run the screensaver if we're in the top-right hot corner.
#defaults write com.apple.dock wvous-tr-corner -int 5
#defaults write com.apple.dock wvous-tr-modifier -int 0

# Top left screen corner → Desktop
#defaults write com.apple.dock wvous-tl-corner -int 2
#defaults write com.apple.dock wvous-tl-modifier -int 0

killall Finder
killall Dock
killall SystemUIServer
