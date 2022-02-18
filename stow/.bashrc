### general settings

shopt -s cdspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

source /usr/share/bash-completion/completions/git
source /usr/share/fzf/shell/key-bindings.bash

__git_complete git _git

PATH=$PATH:~/dotfiles/scripts:~/.local/bin


### prompt and terminal title

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/$/ /'
}

COLOR1='\[\033[1;36m\]'
COLOR2='\[\033[1;32m\]'
PS1="${COLOR1}\W ${COLOR2}\$(git_branch)${COLOR1}\$ \[\e[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


### fzf settings

export FZF_CTRL_T_COMMAND="fd --type f -HL --color=always"
export FZF_ALT_C_COMMAND="fd --type d -HL --color=always"
export FZF_DEFAULT_COMMAND=${FZF_CTRL_T_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --ansi --height=21'


### custom aliases

alias sudnf='sudo dnf'
alias dnfhist='dnf history --reverse'
alias flat='flatpak'

alias ..='cd ..'
alias _dots='cd ~/dotfiles'
alias _site='cd ~/kangzhiz.github.io'
alias _win='cd /mnt/c/Users/kzhao'

alias vi='vim'
alias vids='vi ~/dotfiles/stow'
alias vd='vimdiff'

alias ls='ls -AFv --color'
alias lsl='ls -oh'
alias tree='tree -CIa ".git|.venv|node_modules"'
alias grep='grep -Rn --color --exclude-dir={.git,.venv,node_modules}'
alias rm='rm -i'
alias bc='bc -q'

alias g='git'
alias gs='g s'

alias py='python3'
alias pymv='py -m venv .venv'
alias pyva='source .venv/bin/activate'
alias pyvd='deactivate'
alias pip='py -m pip'
alias pipf='pip freeze'
alias pipin='pip install'
alias pipun='pip uninstall'
alias pipuna='pip3-autoremove'
alias pipup='pipin --upgrade pip'
alias pips='pip list'
alias pipsu='pips --user'

alias gg='exit'


### startup

eval $(dircolors)
