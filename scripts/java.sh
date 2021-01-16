echo
echo "Installing Java Development tools"

echo "Installing Java 11"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk11

brew install --cask jetbrains-toolbox

echo
echo "Installing SDKMAN"
curl -s "https://get.sdkman.io" | bash

# install local  java11 into sdkman: 
# sdk install java 11-adoptopenjdk /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
# sdk default java 11-adoptopenjdk

# maven, cradle -> sdkman
# sdk install gradle
# sdk install maven

# VisualVM
# $ sdk install visualvm
