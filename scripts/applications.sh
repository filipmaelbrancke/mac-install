echo
echo "Installing applications"

# Utilities

brew cask install flux
brew cask install flycut
brew cask install spectacle
#brew cask install google-drive
brew cask install google-backup-and-sync
brew cask install dropbox
brew cask install cheatsheet
brew cask install macpass
#brew cask install keepassx
brew cask install keepassxc
brew cask install keeweb
brew cask install enpass
brew cask install bitwarden
brew cask install bettertouchtool
brew cask install go2shell
brew cask install vlc
brew cask install the-unarchiver
brew cask install tunnelblick
brew cask install cyberduck
brew cask install mirrordisplays
brew cask install balenaetcher
brew install wget
brew cask install disk-inventory-x
brew cask install arq
# control Mac Media Keys
brew cask install beardedspice
brew cask install keybase
brew cask install vnc-viewer
brew cask install grandperspective
brew cask install calibre
brew cask install iina
brew cask install anki
brew cask install microsoft-remote-desktop-beta
brew cask install libreoffice
brew cask install aerial

# Download client

brew cask install transmission

# Use `~/Documents/Torrents` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

# Use `~/Downloads` to store completed downloads
defaults write org.m0k.transmission DownloadLocationConstant -bool true

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Don’t prompt for confirmation before removing non-downloading active transfers
defaults write org.m0k.transmission CheckRemoveDownloading -bool true

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list. https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

# Randomize port on launch
defaults write org.m0k.transmission RandomPort -bool true

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome
brew cask install firefox
brew cask install tor-browser
brew cask install brave-browser

brew tap caskroom/versions
brew cask install google-chrome-canary

# Communication

brew cask install slack
brew cask install rambox
#brew cask install franz
#brew cask install nylas-n1

brew cask install telegram
brew cask install skype

# (Text) Editors

brew cask install sublime-text
brew cask install atom
brew install macvim
brew cask install xmind
brew cask install visual-studio-code

# Markdown
brew cask install marked
brew cask install macdown
brew cask install abricotine

# Graphics tools

brew cask install skitch
brew cask install zeplin
brew cask install pencil

# Video

brew cask install handbrake
# Homebrew removed formula options as of Homebrew version 2.0
# so no more using the core ffmpeg formula
brew tap justinmayer/tap
brew tap-pin justinmayer/tap
brew install ffmpeg --with-chromaprint --with-fdk-aac
# includes support WebM: ffmpeg -i video.mp4 -strict -2 video.webm

# Screen recorder

brew cask install kap

# Other

brew cask install evernote
brew cask install kindle
brew cask install marshallofsound-google-play-music-player

# Security

brew cask install knockknock
brew cask install blockblock

# Emulation tools

#brew cask install virtualbox

# Useful scripts

brew install youtube-dl


brew cask install veracrypt
# VeraCrypt config: by default VeraCrypt will not alter the timestamp of the volume after it has been created
# This will prevent Cloud syncing from recognizing changes to the volume, and prevent synchronization
# So: 'uncheck' "Preserve modification timestamp of file containers"
# ### cp files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
# ditto (OSX-specific app) will create the directory structure that is missing in the destination
ditto files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"


# Add the brew-cask-upgrade tool: allows to upgrade applications installed with homebrew cask
# homebrew only has support for 'brew cask outdated', not yet 'brew cask upgrade'
# See: https://github.com/buo/homebrew-cask-upgrade
# apps can be updated with 'brew cu app'
brew tap buo/cask-upgrade
