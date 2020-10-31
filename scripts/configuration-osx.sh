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


###############################################################################
# Finder                                                                      #
###############################################################################

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

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

# Use icons / columns / cover flow in all Finder windows by default
# Finder's list view => defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Finder: Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
    General -bool true \
    OpenWith -bool true \
    Privileges -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Use AirDrop over every interface. srsly this should be a default.
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

###############################################################################
# System settings                                                             #
###############################################################################

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

# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# Use scroll gesture with the Ctrl (^) modifier key to zoom
#   defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
# Follow the keyboard focus while zoomed in
#   defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Disable “natural” scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Increase sound quality for Bluetooth headphones/headsets
# defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 80
# defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 40
# defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 80
# defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 80
# defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 80
# defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 80
# defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 80

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Brussels" > /dev/null

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Show default icons in menu bar
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Show digital clock
defaults write com.apple.menuextra.clock IsAnalog -bool false
## Don't flash separators
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false
## Show date
## Examples can be found here: https://github.com/tech-otaku/macos-defaults/blob/master/date-time.sh
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm:ss"


# Disable Notification Center and remove the menu bar icon
#launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Automatically hide and show the Dock
# defaults write com.apple.dock autohide -bool true
# killall Dock

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

# Don't show recently used apps it's annoying
defaults write com.apple.dock show-recents -bool false

# Icon size of Dock items
defaults write com.apple.dock tilesize -int 29

# Dock magnification
defaults write com.apple.dock magnification -bool true

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

###############################################################################
# Activity Monitor                                                            #
###############################################################################
# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5
# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0
# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# Other                                                                       #
###############################################################################

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Prevent Window resizing being slightly off for iTerm2
# (By default iTerm2 will only resize in increments of character widths)
# defaults write com.googlecode.iterm2 DisableWindowSizeSnap -integer 1

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#to revert use defaults -currentHost delete com.apple.ImageCapture disableHotPlug

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Open and save files as UTF–8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# SCREEN
# Enabling subpixel font rendering on non-Apple LCDs (Sierra / High Sierra)
  # defaults write NSGlobalDomain AppleFontSmoothing -int 2
# Re-enable Subpixel antialiasing for text (Mojave)
defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE

# Enable HiDPI display modes (requires restart)
# sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# Enable Dark mode
# osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'

# instead of only appearing on the last monitor you touched the dock, make cmd-tab app switcher show up on all monitors
defaults write com.apple.Dock appswitcher-all-displays -bool true

killall Finder
killall Dock
killall SystemUIServer
