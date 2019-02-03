echo
echo "Installing Docker"
brew cask install docker
brew cask install docker-toolbox

# Dive == tool for exploring a docker image, layer contents, and discovering ways to shrink your Docker image size
brew tap wagoodman/dive
brew install dive

# Amazon ECR Docker Credential Helper
brew install docker-credential-helper-ecr
