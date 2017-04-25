echo
# prereqs

# OS X Sierra prevents changes to TCC.db, so only enable tccutil when SIP is disabled
#brew install tccutil
# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring Spectacle"
#sudo tccutil --insert "com.divisiblebyzero.Spectacle" # Enable Accessibility Settings
loginitems -a "Spectacle" -p "/Applications/Spectacle.app" # Start on login
open /Applications/Spectacle.app

echo "Configuring FlyCut"
loginitems -a "Flycut" -p "/Applications/Flycut.app" # Start at login
open /Applications/Flycut.app

echo "Installing QuickLook extensions"
brew cask install qlstephen  # QLStephen is a QuickLook plugin to view plain text files without a file extension
#brew cask install webpquicklook # WebP
brew cask install quicklookapk # Preview Android APK files
#brew cask install qlcolorcode # Renders source code with syntax highlighting
#brew cask install qlmarkdown # Renders a preview of a Markdown file
#brew cask install quicklook-json # Renders a preview of a Json file

echo "Configuring Spectacle"
cp files/Shortcuts.json ~/"Library/Application Support/Spectacle/Shortcuts.json"
