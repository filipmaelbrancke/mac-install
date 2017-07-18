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
brew cask install keepassx
brew cask install keeweb
brew cask install bettertouchtool
brew cask install go2shell
brew cask install vlc
brew cask install the-unarchiver
brew cask install tunnelblick
brew cask install cyberduck
brew cask install mirrordisplays
brew cask install etcher
brew install wget
brew cask install disk-inventory-x
# control Mac Media Keys
brew cask install beardedspice

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome
brew cask install firefox
brew cask install torbrowser
brew cask install brave

brew tap caskroom/versions
brew cask install google-chrome-canary

# Communication

brew cask install slack
brew cask install franz
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

# Screen recorder

brew cask install kap

# Other

brew cask install evernote
brew cask install kindle
brew cask install google-play-music-desktop-player

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
