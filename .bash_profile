# Useful prompt
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
# (`node --version`, `npm --version`):
export PS1='`node --version`:\w$(__git_ps1)$ '

# local binaries
export PATH=$PATH:/Users/hloftis/local/bin

# ssh-agent
ssh-add ~/.ssh/heroku_rsa
ssh-add ~/.ssh/hunterloftis_rsa

# data warehouse
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin/
alias dwh='heroku preauth --app heroku-data-warehouse && heroku pg:psql --app heroku-data-warehouse'

# rabbitmq
export PATH=$PATH:/usr/local/sbin

# select different heroku clouds
cloud() {
  eval "$(ion-client shell)"
  cloud "$@"
}

# nvm
export NVM_DIR="/Users/hloftis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# boot2docker
# alias b2d='boot2docker stop && boot2docker start && $(boot2docker shellinit)'
# $(boot2docker shellinit)

# ruby
eval "$(rbenv init -)"

# android
export PATH="/Users/hloftis/Library/Android/sdk/platform-tools:$PATH"

# Fix the keychain whenever updates break it
destroy_keychain() {
  rm -rf ~/Library/Keychains/*
}

export PATH="$HOME/.yarn/bin:$PATH"

# Go
mkdir -p $HOME/go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Yarn
install_yarn() {
  local version="$1"
  curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version "$version"
}
