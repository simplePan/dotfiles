# Homebrew tools and apps
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew install heroku wget
brew install go --cross-compile-common
brew cask install google-chrome utorrent vlc spotify steam slack visual-studio-code 1password iterm2 unity

# Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
