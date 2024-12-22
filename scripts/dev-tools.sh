echo
echo "Installing general development tools"

# command line HTTP client
brew install httpie

# command line http benchmarking
brew install siege


brew install --cask visual-studio-code

# API testing tool
brew install --cask postman
brew install --cask insomnia
brew install --cask insomnia-designer
brew install --cask firecamp
brew install --cask graphiql
brew install --cask mqtt-explorer
brew install --cask mqttx
brew install --cask bruno

# Secure tunnels to localhost
brew install --cask ngrok

brew tap hashicorp/tap
brew install hashicorp/tap/boundary
brew install hashicorp-boundary-desktop

# DB
## GUIs
brew install --cask sequel-pro # mysql
brew install --cask robo-3t # mongo
brew install --cask db-browser-for-sqlite # sqlite
brew install --cask sqlitestudio
brew install --cask postico # postgresql
brew install --cask dbeaver-community # universal
brew install --cask beekeeper-studio # universal

# Virtual machines
brew install --cask virtualbox

# Servers = docker containers instead of locally installed servers

brew install ansible

# command-line JSON processor
brew install jq

brew install coreutils
brew install watch
brew install graphviz
brew install --cask sloth
brew install --cask raspberry-pi-imager
# only really interested in psql, pg_dump and the like, but no database service is started by default anyways
brew install postgresql
