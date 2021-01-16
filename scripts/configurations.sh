echo
# prereqs

# OS X Sierra prevents changes to TCC.db, so only enable tccutil when SIP is disabled
#brew install tccutil
# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring Rectangle"
#loginitems -a "Rectangle" -p "/Applications/Rectangle.app" # Start on login
open /Applications/Rectangle.app
echo "Installing Rectangle shortcuts"
ditto files/com.knollsoft.Rectangle.plist ~/"Library/Preferences/com.knollsoft.Rectangle.plist"

echo "Configuring FlyCut"
loginitems -a "Flycut" -p "/Applications/Flycut.app" # Start at login
open /Applications/Flycut.app

echo "Installing QuickLook extensions"
#brew cask install qlstephen  # Does not work yet in Big Sur # QLStephen is a QuickLook plugin to view plain text files without a file extension
#brew cask install webpquicklook # WebP
brew install --cask qlcolorcode # Renders source code with syntax highlighting
#brew install --cask qlmarkdown # Renders a preview of a Markdown file
#brew install --cask quicklook-json # Renders a preview of a Json file
#brew install --cask suspicious-package # Preview the contents of a standard Apple installer package
