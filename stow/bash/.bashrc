# .bashrc

### prompt

PS1='\[\033[1;34m\]( \[\033[1;33m\]\W \[\033[1;34m\]) \[\033[1;35m\]> \[\e[m\]'
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

### settings

shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

### fzf

export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPTS='--inline-info --border --margin=5%'

### directories

export dots=$HOME/Documents/main/dotfiles
export site=$HOME/Documents/main/kangzhiz.github.io

export main=$HOME/Documents/main
export misc=$HOME/Documents/misc
export mints=$HOME/Documents/mints

export docs=$HOME/Documents
export desk=$HOME/Desktop
export down=$HOME/Downloads

### aliases

alias ..='cd ..'
alias sudnf='sudo dnf'

alias ls='ls -Avp --color'
alias lsl='ls -oh'
alias grep='grep -n --color'

alias vi='vim'
alias vis='vi -S'
alias ebrc='vi $dots/stow/bash/.bashrc'
alias evrc='vi $dots/stow/vim/.vimrc'

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

alias cdf='cd $(fzf)'
alias vif='vi $(fzf)'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'

### scripts

alias testfont='(cd $dots/scripts && ./testfont.sh)'
