# .bashrc

### PROMPT

PS1="\[\033[1;34m\][\u@\h: \[\033[1;33m\]\W\[\033[m\]\[\033[1;34m\]] \[\033[1;33m\]-> \[\e[m\]"

### ALIASES

# navigation
alias ..="cd .."
alias dots="cd ~/.dots"
alias resume="cd ~/Documents/main/resume"
alias site="cd ~/Documents/main/site"
alias main="cd ~/Documents/main"
alias mints="cd ~/Documents/mints"
alias misc="cd ~/Documents/misc"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
 
# configs
alias stowall="(cd .dots && stow bash && stow git && stow vim)"
alias evrc="vim ~/.dots/vim/.vimrc"
alias ebrc="vim ~/.dots/bash/.bashrc"
alias sbrc="source ~/.bashrc"

# dnf
alias sudnf="sudo dnf"
alias sudnfc="sudo dnf clean all"

# misc
alias vi="vim"
alias ls="ls -Avp --color"
alias 1ls="ls -1"
alias grep="grep -n --color"
