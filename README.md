# mac-install

My OS X on MacBook Pro install.

## Getting Started

- Currently tested against [Big Sur](https://www.apple.com/macos/big-sur/)
    - These scripts might work more or less on previous versions, down to [High Sierra](https://support.apple.com/en-us/HT211683), but are maintained with only the latest macOS in mind
- Install [Xcode 12](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)


Open up the OS X Terminal and run the following commands:

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/filipmaelbrancke/mac-install.git
cd mac-install
```

### Setup Machine

If you're setting up a machine run the following:

```sh
./setup-machine.sh
```

### Maintain Machine

Keeping the machine up to date:

```sh
./update-machine.sh
```

This will :  

- update macOS software
- update & upgrade homebrew packages
- update & propose to upgrade homebrew cask packages
- update npm / apm
- suggest updates to apps installed through appstore

### Info

Originally based on Pivotal's setup scripts (https://github.com/pivotal/workstation-setup)  

Some `defaults` are commented out for the moment, due to Mojave's permissions. Adding Terminal/iTerm and bash to Full Disk Access allows to set `defaults` again, but it might be better to look up how to address the container directly...    
See also: https://github.com/mathiasbynens/dotfiles/issues/849

### Credits

Based on :  

- https://github.com/timrijckaert/mac-install
- https://github.com/pakoito/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/holman/dotfiles
- Bash-it (https://github.com/Bash-it/bash-it)
- https://github.com/albinekcom/updater-for-macos
- https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731
- https://github.com/herrbischoff/awesome-osx-command-line
