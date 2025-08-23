export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=()

source $ZSH/oh-my-zsh.sh

alias npm-deps='npx npm-check-updates -i'

eval "$(mise activate zsh)"

# bun completions
[ -s "/Users/dnlytras/.bun/_bun" ] && source "/Users/dnlytras/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
