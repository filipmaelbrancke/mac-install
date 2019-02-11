#!/usr/bin/env bash


START_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
SECONDS=0
echo "--- Updater for this machine started at: $START_DATE ---"

echo
echo "- Updating \"macOS\" -"
softwareupdate --install --all

echo
echo "- Updating \"brew\" -"
brew update
brew upgrade
brew cleanup

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

echo
echo "- Updating \"homebrew casks (via the brew-cask-upgrade tool)\" -"
brew cu --cleanup

END_DATE=$(date +"%d.%m.%Y | %H:%M:%S")
ELAPSED=" $(($SECONDS / 3600))hrs $((($SECONDS / 60) % 60))min $(($SECONDS % 60))sec"
echo
echo "--- Updater for macOS finished at: $END_DATE ---"
echo
echo "--- Updater for macOS took: $ELAPSED ---"
