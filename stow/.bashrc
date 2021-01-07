### prompt and title

BLUE="\[\033[1;34m\]"
YELLOW="\[\033[1;33m\]"
RED="\[\033[1;31m\]"
PURPLE="\[\033[1;35m\]"

PS1="${BLUE}( ${YELLOW}\W${RED}\$(__git_ps1 ' %s') ${BLUE}) ${PURPLE}> \[\e[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

### general settings

shopt -s autocd
shopt -s cdspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

source /usr/share/bash-completion/completions/git
source /usr/share/git-core/contrib/completion/git-prompt.sh

__git_complete g _git

export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPTS='--inline-info --border --margin=5%'

### aliases

alias ..='cd ..'
alias _desk='cd ~/Desktop'
alias _main='cd ~/Documents/main'
alias _misc='cd ~/Documents/misc'
alias _mint='cd ~/Documents/mints'
alias _site='cd ~/Documents/main/kangzhiz.github.io'
alias _dots='cd ~/Documents/main/dotfiles'

alias ls='ls -Avp --color'
alias lsl='ls -oh'
alias grep='grep -n --color'

alias sudnf='sudo dnf'

alias vi='vim'
alias vis='vi -S'
alias ebrc='vi ~/Documents/main/dotfiles/stow/.bashrc'
alias evrc='vi ~/Documents/main/dotfiles/stow/.vimrc'
alias egcf='vi ~/Documents/main/dotfiles/stow/.gitconfig'

alias cdf='cd $(fzf)'
alias vif='vi $(fzf)'

alias g='git'
alias gs='g s'
alias gg='g g'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'
