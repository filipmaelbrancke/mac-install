echo
echo "Installing applications"

# Utilities

# Clipboard manager
brew install --cask flycut
# Move and resize windows on macOS with keyboard shortcuts and snap areas
brew install --cask rectangle
brew install --cask google-backup-and-sync
brew install --cask dropbox
brew install --cask macpass
brew install --cask keepassxc
brew install --cask keeweb
brew install --cask enpass
brew install --cask bitwarden
brew install bitwarden-cli
brew install --cask bettertouchtool
brew install --cask go2shell
brew install --cask vlc
brew install --cask iina
brew install --cask the-unarchiver
brew install --cask cyberduck
brew install --cask balenaetcher
brew install wget
brew install --cask disk-inventory-x
brew install --cask grandperspective
brew install --cask omnidisksweeper
brew install --cask arq
brew install --cask keybase
brew install --cask vnc-viewer
brew install --cask calibre
brew install --cask anki
brew install --cask libreoffice
brew install bat
brew install --cask audacity
brew install --cask numi
brew install --cask localsend

# Terminals

brew install --cask iterm2

# Browsers

brew install --cask google-chrome
brew install --cask firefox
brew install --cask tor-browser
brew install --cask brave-browser
brew tap homebrew/cask-versions && brew install --cask google-chrome-canary
brew install --cask orion
brew install --cask mullvad-browser
brew install --cask arc
brew install --cask browserosaurus

# Communication

brew install --cask slack
brew install --cask ferdi
brew install --cask signal
brew install --cask discord

brew install --cask telegram
brew install --cask microsoft-teams
brew install --cask zoom

# (Text) Editors

brew install --cask sublime-text
brew install --cask atom
brew install macvim
brew install --cask xmind
brew install --cask vscodium
brew install --cask brackets
brew install --cask hex-fiend
brew install --cask lapce

# Markdown
brew install --cask marked
brew install --cask macdown
brew install --cask obsidian

brew install --cask notion

# Graphics tools

brew install --cask inkscape
brew install --cask exifcleaner
brew install qview
brew install --cask xnviewmp
brew install zint
brew install imagemagick
brew install --cask autodesk-fusion360

# Video

brew install --cask handbrake
#brew install ffmpeg

# Screen recorder

brew install --cask kap

# Other

brew install --cask evernote
brew install --cask notion
brew install --cask kindle
brew install --cask commander-one


# Sync brightness (based on build-in Macbook light sensor) to external monitors
brew install --cask lunar


# Security

brew install --cask knockknock
brew install --cask blockblock
brew install --cask taskexplorer
brew install --cask netiquette
brew install --cask little-snitch
brew install secretive
brew install ssss
brew install openconnect

# Useful scripts

# Media

brew install yt-dlp/taps/yt-dlp
# https://github.com/lapfelix/BluetoothConnector/ : connect/disconnect Bluetooth devices
brew install bluetoothconnector
brew install --cask yt-music
brew install --cask notunes


brew install --cask veracrypt
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



brew install --cask hiddenbar
#brew install --cask mirrordisplays
#brew cask install tunnelblick
#brew cask install cheatsheet
# control Mac Media Keys
#brew install --cask beardedspice
#brew install --cask marshallofsound-google-play-music-player
