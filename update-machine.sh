#!/usr/bin/env bash


START_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
echo "--- Updater for this machine started at: $START_DATE ---"

echo
echo "- Updating \"macOS\" -"
softwareupdate --install --all

echo
echo "- Updating \"brew\" -"
brew update
brew upgrade
brew cleanup
brew cask cleanup

echo “you can hit mas upgrade to upgrade theses apps from the app store:”
mas outdated
echo “install with: mas upgrade”

echo
echo "- Updating \"apm\" -"
apm update --no-confirm
apm clean

echo
echo "- Updating \"npm\" -"
npm update -g

END_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
echo
echo "--- Updater for macOS finished at: $END_DATE ---"
