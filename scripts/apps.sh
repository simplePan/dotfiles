# Guarantee a profile
touch ~/.bash_profile

# Use the default GOPATH
mkdir -p ~/go

# Homebrew tools and apps
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install heroku/brew/heroku wget go
brew cask install google-chrome vlc spotify steam slack visual-studio-code 1password iterm2 unity

# Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
