#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

MY_DIR="$(dirname "$0")"

clear

echo "Hello, "$USER".  This script will install your mac. It asks for your email address and phone number in order to customize the Git config and the lost&found message on the login screen"

echo
echo "Enter your full name and press [ENTER]"
read fullname
echo
echo "Enter your email address and press [ENTER]"
read emailaddress
echo "Enter your phone number and press [ENTER]"
read phonenumber


echo
echo "Setting up machine..."

# source ${MY_DIR}/xcode-license.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/homebrew.sh
source ${MY_DIR}/configuration-osx.sh "$fullname" $emailaddress "$phonenumber"
source ${MY_DIR}/configuration-bash.sh
source ${MY_DIR}/git.sh "$fullname" $emailaddress
# source ${MY_DIR}/git-aliases.sh - TODO evaluate need for git aliases + bash-it vs oh-my-zsh
source ${MY_DIR}/java.sh
source ${MY_DIR}/scala.sh
source ${MY_DIR}/android.sh
source ${MY_DIR}/js.sh
source ${MY_DIR}/cli.sh
source ${MY_DIR}/applications.sh
source ${MY_DIR}/fonts.sh
source ${MY_DIR}/docker.sh
source ${MY_DIR}/general-dev.sh
source ${MY_DIR}/appstore.sh
source ${MY_DIR}/configurations.sh

source ${MY_DIR}/finished.sh
