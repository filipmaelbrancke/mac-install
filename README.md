# mac-install

My OS X on MacBook Pro install.

Based on :  

- Pivotal's setup scripts (https://github.com/pivotal/workstation-setup)  
- https://github.com/pakoito/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/holman/dotfiles
- Bash-it (https://github.com/Bash-it/bash-it)
- https://github.com/albinekcom/updater-for-macos
- https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731


## Getting Started

- Make sure you are running [Sierra](http://www.apple.com/macos/sierra/)
- Install [Xcode 8.1](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)


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

The list of installed applications is found in: [applications.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/applications.sh)
