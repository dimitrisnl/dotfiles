export ZSH=/Users/dnlytras/.oh-my-zsh

ZSH_THEME="theunraveler"

export UPDATE_ZSH_DAYS=4

# DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  osx
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For brew, at least
export PATH=/usr/local/bin:$PATH

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"