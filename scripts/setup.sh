#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

MY_DIR="$(dirname "$0")"

clear

echo
echo "Setting up machine..."

source ${MY_DIR}/xcode-license.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/homebrew.sh
source ${MY_DIR}/configuration-osx.sh
source ${MY_DIR}/configuration-bash.sh
source ${MY_DIR}/git.sh
source ${MY_DIR}/git-aliases.sh
source ${MY_DIR}/java.sh
source ${MY_DIR}/android.sh
source ${MY_DIR}/applications.sh


source ${MY_DIR}/configurations.sh

source ${MY_DIR}/finished.sh
