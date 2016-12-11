echo
echo 'Customizing OS X configuration'

EMAIL_ADDRESS=$1
PHONE_NUMBER=$2


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

echo "Configuring the login screen for user $USER with $EMAIL_ADDRESS and $PHONE_NUMBER"
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Found this computer? Please contact $USER at $EMAIL_ADDRESS ($PHONE_NUMBER)."

killall Finder
killall Dock
killall SystemUIServer
