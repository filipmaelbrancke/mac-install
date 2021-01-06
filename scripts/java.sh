echo
echo "Installing Java Development tools"

echo "Installing Java 11"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk11

brew install --cask jetbrains-toolbox
brew install maven
brew install gradle

echo
echo "Installing SDKMAN"
curl -s "https://get.sdkman.io" | bash

# VisualVM
# $ sdk install visualvm
