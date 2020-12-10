# .bashrc

### PROMPT

PS1="\[\033[1;34m\][\u@\h: \[\033[1;33m\]\W\[\033[m\]\[\033[1;34m\]] \[\033[1;33m\]-> \[\e[m\]"

### SETTINGS

shopt -s autocd
shopt -s cdspell

### ALIASES

alias ..="cd .."
alias dots="cd ~/.dots"
alias resume="cd ~/Documents/main/resume"
alias site="cd ~/Documents/main/site"
alias main="cd ~/Documents/main"
alias mints="cd ~/Documents/mints"
alias misc="cd ~/Documents/misc"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"

alias evrc="vim ~/.dots/vim/.vimrc"
alias ebrc="vim ~/.dots/bash/.bashrc"
alias sbrc="source ~/.bashrc"

alias sudnf="sudo dnf"
alias sudnfc="sudo dnf clean all"

alias g="git"
alias vi="vim"

alias ls="ls -Avp --color"
alias dir="dir --color"
alias grep="grep -n --color"

### STARTUP

neofetch
