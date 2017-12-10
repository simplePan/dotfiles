# Guarantee a profile
touch ~/.bash_profile

# Use the default GOPATH
mkdir -p ~/go

# Homebrew tools and apps
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# Hopefully sign in to the app store which should automatically download purchased apps
mas signin --dialog hunter.loftis@gmail.com

# configure git
git config --global url."git@github.com:".insteadOf "https://github.com/"
