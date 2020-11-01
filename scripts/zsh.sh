echo "Installing Oh-My-Zsh"

if [ -z "$configscriptpath" ]; then
    CONFIG_SCRIPT_PATH=$1
else
    CONFIG_SCRIPT_PATH=$configscriptpath
fi

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# ZSH Autosuggestions
brew install zsh-autosuggestions

# Copy custom .zshrc
cp "$CONFIG_SCRIPT_PATH/HOME/.zshrc" "~/.zshrc"
