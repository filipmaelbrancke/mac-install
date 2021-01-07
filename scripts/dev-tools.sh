echo
echo "Installing general development tools"

# command line HTTP client
brew install httpie

# command line http benchmarking
brew install siege

# API testing tool
brew install --cask postman
brew install --cask insomnia
brew install --cask insomnia-designer
brew install --cask firecamp
brew install --cask graphiql
brew install --cask mqtt-explorer

# Secure tunnels to localhost
brew install --cask ngrok

# DB
## GUIs
brew install --cask sequel-pro # mysql
brew install --cask robo-3t # mongo
brew install --cask db-browser-for-sqlite # sqlite
brew install --cask postico # postgresql
brew install --cask dbeaver-community # universal

# Virtual machines
brew install --cask virtualbox

# Servers = docker containers instead of locally installed servers

# command-line JSON processor
brew install jq

brew install coreutils
brew install graphviz
brew install --cask sloth
