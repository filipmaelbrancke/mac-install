echo
echo "Installing Git and associated tools"
brew install git
# brew cask install gitkraken
# brew cask install sourcetree
brew cask install kaleidoscope
# brew cask install gitup
# brew cask install github
# brew cask install fork

echo
echo "Setting global Git configurations"

if [ -z "${fullname}" ]; then
    FULL_NAME=$1
else
    FULL_NAME=$fullname
fi
if [ -z "${emailaddress}" ]; then
    EMAIL_ADDRESS=$2
else
    EMAIL_ADDRESS=$emailaddress
fi

git config --global core.editor code
git config --global transfer.fsckobjects true
git config --global credential.helper osxkeychain

git config --global user.name "$FULL_NAME"
git config --global user.email $EMAIL_ADDRESS

# Add gitconfig configuration
if grep -Fxq "Kaleidoscope" ~/.gitconfig > /dev/null
then
    # code if found
    echo
    echo "Kaleidoscope is already configured in your ~/.gitconfig"
else
    # code if not found
    cat files/gitconfig >> ~/.gitconfig
fi
