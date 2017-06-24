# mac-install

My OS X on MacBook Pro install.

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

### Maintain Machine

Keeping the machine up to date:

```sh
./update-machine.sh
```

The list of installed applications is found in:  

-  [applications.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/applications.sh)
-  [android.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/android.sh)
-  [appstore.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/appstore.sh)
-  [docker.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/docker.sh)
-  [general-dev.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/general-dev.sh)
-  [git.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/git.sh)
-  [java.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/java.sh)
-  [scala.sh] (https://github.com/filipmaelbrancke/mac-install/blob/master/scripts/scala.sh)


Based on :  

- Pivotal's setup scripts (https://github.com/pivotal/workstation-setup)  
- https://github.com/pakoito/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/holman/dotfiles
- Bash-it (https://github.com/Bash-it/bash-it)
- https://github.com/albinekcom/updater-for-macos
- https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731
