# .bashrc

### PROMPT

PS1="\[\033[1;34m\][\u@\h: \[\033[1;33m\]\W\[\033[m\]\[\033[1;34m\]] \[\033[1;33m\]-> \[\e[m\]"

### ALIASES

# basic navigation
alias ..="cd .."

# project directories 
alias dmain="cd ~/Documents/main"
alias dmints="cd ~/Documents/mints"
alias dmisc="cd ~/Documents/misc"
 
# configs
alias stowall="(cd .dotfiles && stow bash && stow git && stow vim)"
alias evrc="vim ~/.dotfiles/vim/.vimrc"
alias ebrc="vim ~/.dotfiles/bash/.bashrc"
alias sbrc="source ~/.bashrc"

# dnf
alias sudnf="sudo dnf"
alias sudnfc="sudo dnf clean all"

# misc
alias vi="vim"
alias ls="ls -Avp"
alias dir="ls -d *"
alias grep="grep -n"
