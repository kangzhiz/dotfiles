### general settings

shopt -s cdspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

source /usr/share/bash-completion/completions/git
source /usr/share/git-core/contrib/completion/git-prompt.sh
source /usr/share/fzf/shell/key-bindings.bash

__git_complete g _git

PATH=$PATH:~/.local/kscripts
export NLTK_DATA='/home/k/Documents/school/nlp/nltk_data'


### prompt and terminal title

COLOR1='\[\033[1;36m\]'
COLOR2='\[\033[1;32m\]'
PS1="${COLOR1}\W ${COLOR2}\$(__git_ps1 '%s ')${COLOR1}\$ \[\e[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


### fzf settings

export FZF_CTRL_T_COMMAND="fd --type f -HL --color=always"
export FZF_ALT_C_COMMAND="fd --type d -HL --color=always"
export FZF_DEFAULT_COMMAND=${FZF_CTRL_T_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --ansi --height=21 --margin=0,0,0,3'


### custom aliases

alias sudnf='sudo dnf'
alias dnfhist='dnf history --reverse'

alias ..='cd ..'
alias _desk='cd ~/Desktop'
alias _docs='cd ~/Documents'
alias _dots='cd ~/Documents/dotfiles'
alias _down='cd ~/Downloads'

alias vi='vim'
alias vd='vimdiff'
alias vids='vi ~/Documents/dotfiles/stow'

alias ls='ls -AFv --color'
alias lsl='ls -oh'
alias tree='tree -CIa ".git|.venv|node_modules"'
alias grep='grep -Rn --color --exclude-dir={.git,.venv,node_modules}'
alias rm='rm -i'

alias ff='firefox'
alias term='gnome-terminal'
alias naut='nautilus .'
alias open='gio open'

alias g='git'
alias gs='g s'

alias py='python3'
alias pymvenv='py -m venv .venv'
alias pyva='source .venv/bin/activate'
alias pyvd='deactivate'
alias pip='py -m pip'
alias pipi='pip install'
alias pipu='pip uninstall'
alias pips='pip list'
alias pipup='pip install --upgrade pip'
alias pipf='pip freeze > requirements.txt'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'

alias gg='exit'
