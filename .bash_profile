# ssh
ssh-add -K ~/.ssh/*_rsa

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
export GOPATH=$HOME/code
export GOBIN=$GOPATH/bin
export CODE=$GOPATH/src/github.com/hunterloftis

# git-aware emoji prompt
emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
else
    __git_ps1=''
fi
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[0;36m\]\w\$(__git_ps1) $emoji  \[\e[0m\]"
