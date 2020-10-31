echo
echo "Installing applications"

# Utilities

brew cask install alfred
# brew cask install flux
# brew cask install flycut
# Move and resize windows on macOS with keyboard shortcuts and snap areas
# Spectacle is no longer maintained -> Rectangle
# brew cask install rectangle
# brew cask install google-drive
# brew cask install google-backup-and-sync
# brew cask install dropbox
brew cask install resilio-sync
# brew cask install cheatsheet
# brew cask install macpass
# brew cask install keepassx
# brew cask install keepassxc
# brew cask install keeweb
# brew cask install enpass
# brew cask install bitwarden
# brew install bitwarden-cli
# brew cask install bettertouchtool
# brew cask install go2shell
brew cask install vlc
# brew cask install the-unarchiver
# brew cask install tunnelblick
# brew cask install cyberduck
# brew cask install mirrordisplays
# brew cask install balenaetcher
brew install wget
# brew cask install disk-inventory-x
# brew cask install arq
# control Mac Media Keys
brew cask install beardedspice
# brew cask install keybase
# brew cask install vnc-viewer
# brew cask install grandperspective
# brew cask install calibre
# brew cask install iina
# brew cask install anki
# brew cask install microsoft-remote-desktop-beta
# brew cask install libreoffice
# brew cask install aerial
# brew cask install transmission
# brew cask install sloth
brew cask install 1password
# brew cask install hiddenbar

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome
# brew cask install firefox
# brew cask install tor-browser
# brew cask install brave-browser

# brew tap caskroom/versions
# brew cask install google-chrome-canary

# Communication

# brew cask install slack
# brew cask install rambox
# brew cask install franz
# brew cask install nylas-n1

# brew cask install telegram
# brew cask install skype
# brew cask install skype-for-business

# (Text) Editors

# brew cask install sublime-text
# brew cask install atom
# brew install macvim
# brew cask install xmind
brew cask install visual-studio-code
# brew cask install brackets

# Markdown
# brew cask install marked
# brew cask install macdown
# brew cask install abricotine

# Graphics tools

# brew cask install skitch
# brew cask install zeplin
# brew cask install pencil

# Video

# brew cask install handbrake
# Homebrew removed formula options as of Homebrew version 2.0
# so no more using the core ffmpeg formula
# brew tap justinmayer/tap
# brew install justinmayer/tap/ffmpeg --with-chromaprint --with-fdk-aac
# includes support WebM: ffmpeg -i video.mp4 -strict -2 video.webm

# Screen recorder

# brew cask install kap

# Other

# brew cask install evernote
# brew cask install kindle
# brew cask install marshallofsound-google-play-music-player

# Sync brightness (based on build-in Macbook light sensor) to external monitors
# brew cask install lunar

# Security

# brew cask install knockknock
# brew cask install blockblock
# brew cask install taskexplorer
# brew cask install netiquette

# Emulation tools

# brew cask install virtualbox

# Useful scripts

brew install youtube-dl
# https://github.com/lapfelix/BluetoothConnector/ : connect/disconnect Bluetooth devices
brew install bluetoothconnector

# brew cask install veracrypt
# VeraCrypt config: by default VeraCrypt will not alter the timestamp of the volume after it has been created
# This will prevent Cloud syncing from recognizing changes to the volume, and prevent synchronization
# So: 'uncheck' "Preserve modification timestamp of file containers"
# ### cp files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
# ditto (OSX-specific app) will create the directory structure that is missing in the destination
# ditto files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"


# Add the brew-cask-upgrade tool: allows to upgrade applications installed with homebrew cask
# homebrew only has support for 'brew cask outdated', not yet 'brew cask upgrade'
# See: https://github.com/buo/homebrew-cask-upgrade
# apps can be updated with 'brew cu app'
brew tap buo/cask-upgrade

# brew tap homebrew/cask-drivers
# brew cask install bose-soundtouch
