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
brew tap homebrew/cask-versions
brew cask install adoptopenjdk/openjdk/adoptopenjdk8

echo
echo "Installing Java 11"
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk11

echo "Installing Java 14"
brew cask install adoptopenjdk14

echo "Installing Azul OpenJDK"
brew cask install zulu11
