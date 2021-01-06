### prompt

PS1='\[\033[1;34m\]( \[\033[1;33m\]\W \[\033[1;34m\]) \[\033[1;35m\]> \[\e[m\]'
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

### general

shopt -s autocd
shopt -s cdspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

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

alias cdf='cd $(fzf)'
alias vif='vi $(fzf)'

alias g='git'
alias gs='g status'
alias gl='g log --graph'
alias gd='g diff'
alias gf='g fetch'
alias gm='g merge'
alias gb='g branch'
alias gc='g checkout'
alias ga='g add'
alias gg='g commit'
alias gp='g push'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'
