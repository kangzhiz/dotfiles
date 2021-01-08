### prompt and title

B="\[\033[1;34m\]"
Y="\[\033[1;33m\]"
P="\[\033[1;35m\]"
R="\[\033[1;31m\]"
PS1="${B}( ${Y}\W${R}\$(__git_ps1 ' %s') ${B}) ${P}> \[\e[m\]"
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
alias vii='vim .'
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
