echo
echo "Installing Java Development tools"
brew cask install java
brew cask install intellij-idea
brew install maven
brew install gradle
brew cask install eclipse-ide # teach java training
brew install jenv

echo
echo "Installing Java 8"
brew tap caskroom/versions
brew cask install java8
