echo
echo "Installing Java Development tools"
brew cask install java # install latest Java version
brew install maven     # Leading Java build tool
brew install gradle    # Alternative Java build tool

echo
echo "Installing Java 8"
brew tap caskroom/versions # allow brew to lookup other Java versions
brew cask install java8    # install most commonly production used Java version

echo
echo "Installing jenv to support multiple Java versions"
brew install jenv # Support multiple Java versions (https://www.jenv.be/)

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >>~/.zshrc
echo 'eval "$(jenv init -)"' >>~/.zshrc

# - reload ZSH dotifile
source ~/.zshrc

for jdk in /Library/Java/JavaVirtualMachines; do
  if [[ -d jdk ]]; then
    jenv add /Library/Java/JavaVirtualMachines/$jdk/Contents/Home
    ## ERROR : needed to	- customize the PATH export to include brew paths
    ### path export export PATH="$HOME/.jenv/bin:$HOME/bin:/usr/local/bin:$PATH"
  fi
done

# Set Java 8 as default
jenv global 1.8

# Force jenv to update JAVA_HOME
jenv enable-plugin export

# link jenv with maven
jenv enable-plugin maven
