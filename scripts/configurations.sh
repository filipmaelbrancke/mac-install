echo
# prereqs
brew install tccutil
# add loginitems repo https://github.com/OJFord/loginitems
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring Spectacle"
sudo tccutil --insert "com.divisiblebyzero.Spectacle" # Enable Accessibility Settings
loginitems -a "Spectacle" -p "/Applications/Spectacle.app" # Start on login
open /Applications/Spectacle.app

echo "Configuring FlyCut"
loginitems -a "Flycut" -p "/Applications/Flycut.app" # Start at login
open /Applications/Flycut.app
