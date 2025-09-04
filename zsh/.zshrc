export ZSH="$HOME/.oh-my-zsh"

# zsh options
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

# plugins (none, the faster the better)
plugins=()

source $ZSH/oh-my-zsh.sh

# === CUSTOM PROMPT ===
PROMPT='d%{$fg[cyan]%}::%{$reset_color%}%{$fg[blue]%}%c%{$reset_color%} % '
RPROMPT='%{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}$(git_prompt_status)%{$reset_color%}'

# Git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} A"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[cyan]%} M"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} D"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} R"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} UM"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} UT"

# === TOOL INTEGRATIONS ===
# mise (version manager)
eval "$(mise activate zsh)"

# bun (JavaScript runtime)
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# === ALIASES ===
alias gg='lazygit'
alias npm-deps='npx npm-check-updates -i'
