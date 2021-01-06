echo
echo "Installing Docker"
brew install --cask docker

# Dive == tool for exploring a docker image, layer contents, and discovering ways to shrink your Docker image size
brew install dive

# Amazon ECR Docker Credential Helper: https://github.com/awslabs/amazon-ecr-credential-helper#Configuration
brew install docker-credential-helper-ecr
