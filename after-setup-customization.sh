#!/bin/bash

# set Oh My ZSH plugins
sed -i 's/# plugins=.*/plugins=(common-aliases.sh docker git mvn npm osx vscode yarn)/' ~/.zshrc

# Bonjour name ending in .local
scutil --set LocalHostName "0x66696c6970"
# Friendly name shown in System Preferences > Sharing
scutil --set ComputerName "0x66696c6970"
# The name recognized by the hostname command
scutil --set HostName "0x66696c6970"
