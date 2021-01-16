echo
echo "Installing fonts"

# Installing fonts tap
brew tap homebrew/cask-fonts

# In the latest versions of XCode, svn is deprecated and no longer seems to work correctly. If this is universally true, install svn for the svn dependent font casks.
brew install subversion

# Fonts

brew install font-inconsolata
brew install font-roboto
brew install font-roboto-mono
brew install font-roboto-slab
brew install font-source-code-pro
brew install font-overpass
brew install font-montserrat
brew install font-londrina-outline
brew install font-londrina-shadow
brew install font-londrina-sketch
brew install font-londrina-solid
brew install font-lobster-two
brew install font-source-sans-pro

# Fonts with programming ligatures

brew install font-jetbrains-mono
brew install font-fira-code
brew install font-hasklig
brew install font-monoid
