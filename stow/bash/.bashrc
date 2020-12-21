# .bashrc

### prompt

PS1="\[\033[1;34m\][\u@\h: \[\033[1;33m\]\W\[\033[m\]\[\033[1;34m\]] \[\033[1;33m\]-> \[\e[m\]"

### settings

shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars

### fzf

export FZF_DEFAULT_COMMAND="find ."
export FZF_DEFAULT_OPTS="--inline-info --border --margin=5%"

### directories

export dots=$HOME/Documents/main/dotfiles
export site=$HOME/Documents/main/site

export main=$HOME/Documents/main
export misc=$HOME/Documents/misc
export mints=$HOME/Documents/mints

export desk=$HOME/Desktop
export down=$HOME/Downloads

### aliases

alias ..="cd .."
alias sudnf="sudo dnf"

alias ls="ls -Avp --color"
alias dir="dir --color"
alias grep="grep -n --color"

alias vi="vim"
alias vif="vim \$(fzf)"

alias ebrc="vim $dots/stow/bash/.bashrc"
alias evrc="vim $dots/stow/vim/.vimrc"

alias g="git"
alias gs="git status"
alias gl="git log --graph"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gb="git branch"
alias gc="git checkout"
alias ga="git add"
alias gg="git commit"
alias gp="git push"

alias vpn="protonvpn"
alias svpn="sudo protonvpn"

### startup

neofetch --disable packages wm wm_theme icons
