# prompt

B='\[\033[1;34m\]'
Y='\[\033[1;33m\]'
P='\[\033[1;35m\]'
R='\[\033[1;31m\]'
PS1="${B}( ${Y}\W${R}\$(__git_ps1 ' %s') ${B}) ${P}> \[\e[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


# general settings

shopt -s autocd
shopt -s cdspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

source /usr/share/bash-completion/completions/git
source /usr/share/git-core/contrib/completion/git-prompt.sh
source /usr/share/fzf/shell/key-bindings.bash

__git_complete g _git

FZF_IGNORE='! -path "*/.git/*" ! -path "*/node_modules/*"'
export FZF_DEFAULT_COMMAND="find . -type f ${FZF_IGNORE}"
export FZF_ALT_C_COMMAND="find . -type d ${FZF_IGNORE}"
export FZF_CTRL_T_COMMAND=${FZF_DEFAULT_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --height=21 --margin=0,0,0,3'


# custom aliases

alias sudnf='sudo dnf'
alias dnfhist='dnf history --reverse'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'

alias ..='cd ..'
alias _desk='cd ~/Desktop'
alias _main='cd ~/Documents/main'
alias _misc='cd ~/Documents/misc'
alias _mint='cd ~/Documents/mints'
alias _site='cd ~/Documents/main/kangzhiz.github.io'
alias _dots='cd ~/Documents/main/dotfiles'

alias vi='vim'
alias ebrc='vi ~/Documents/main/dotfiles/stow/.bashrc'
alias evrc='vi ~/Documents/main/dotfiles/stow/.vimrc'
alias egcf='vi ~/Documents/main/dotfiles/stow/.gitconfig'

alias g='git'
alias gs='g s'
alias gg='g g'

alias ff='firefox'
alias chrome='google-chrome'
alias naut='nautilus'
alias open='gio open'
alias term='gnome-terminal'

alias ls='ls -AFv --color'
alias lsl='ls -oh'
alias tree='tree -CIa ".git|node_modules"'
alias grep='grep -Rn --color --exclude-dir={.git,node_modules}'
