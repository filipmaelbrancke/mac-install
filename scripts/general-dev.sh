echo
echo "Installing general development tools"

# command line HTTP client
brew install httpie

# command line http benchmarking
brew install siege

# REST API testing tool
brew cask install postman
brew cask install insomnia

# Secure tunnels to localhost
brew cask install ngrok

# DB
## GUIs
brew cask install sequel-pro # mysql
brew cask install robo-3t # mongo
brew cask install db-browser-for-sqlite # sqlite
brew cask install postico # postgresql

#brew cask install dash

brew cask install graphiql

# Virtual

brew cask install virtualbox

# Servers

# Docker containers instead of locally installed servers

brew install vault

brew install jq
