### general settings

shopt -s autocd
shopt -s cdspell
shopt -s cdable_vars

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

source /usr/share/bash-completion/completions/git
source /usr/share/git-core/contrib/completion/git-prompt.sh
source /usr/share/fzf/shell/key-bindings.bash

__git_complete g _git


### prompt and terminal title

COLOR1='\[\033[1;36m\]'
COLOR2='\[\033[1;32m\]'
PS1="${COLOR1}\W ${COLOR2}\$(__git_ps1 '%s ')${COLOR1}\$ \[\e[m\]"
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


### fzf settings

FZF_IGNORE='! -path "*/.git/*" ! -path "*/node_modules/*"'
export FZF_DEFAULT_COMMAND="find . -type f ${FZF_IGNORE} | cut -sd / -f 2-"
export FZF_ALT_C_COMMAND="find . -type d ${FZF_IGNORE} | cut -sd / -f 2-"
export FZF_CTRL_T_COMMAND=${FZF_DEFAULT_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --height=21 --margin=0,0,0,3'


### custom paths

_desk=~/Desktop
_docs=~/Documents
_down=~/Downloads

_dots=$_docs/dotfiles
_fork=$_docs/forks
_site=$_docs/kangzhiz.github.io
_pysc=$_docs/pyscripts


### custom aliases

alias sudnf='sudo dnf'
alias dnfhist='dnf history --reverse'

alias ..='cd ..'
alias cd='cd >/dev/null'
alias ls='ls -AFv --color'
alias lsl='ls -AFvoh --color'
alias tree='tree -CIa ".git|node_modules"'
alias grep='grep -Rn --color --exclude-dir={.git,node_modules}'
alias rm='rm -i'

alias ff='firefox'
alias term='gnome-terminal'
alias naut='nautilus'
alias open='gio open'

alias vi='vim'
alias ebrc='vim $_dots/stow/.bashrc'
alias evrc='vim $_dots/stow/.vimrc'
alias egcf='vim $_dots/stow/.gitconfig'

alias g='git'
alias gs='git s'

alias py='python'
alias pymvenv='python -m venv .venv'
alias pyva='source .venv/bin/activate'
alias pyvd='deactivate'
alias pip='python -m pip'
alias pipup='python -m pip install --upgrade pip'

alias vpn='protonvpn'
alias svpn='sudo protonvpn'

alias gg='exit'
