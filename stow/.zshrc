PATH=$PATH:~/Documents/dotfiles/scripts:~/.local/bin

autoload -Uz compinit && compinit
autoload -Uz vcs_info


### prompt and terminal title

precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{blue}%1d%F{red}${vcs_info_msg_0_} %F{green}%# %f'


### fzf settings

export FZF_CTRL_T_COMMAND="fd --type f -HL --color=always"
export FZF_ALT_C_COMMAND="fd --type d -HL --color=always"
export FZF_DEFAULT_COMMAND=${FZF_CTRL_T_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --ansi --height=21'


### custom aliases

alias ..='cd ..'
alias _dots='cd ~/Documents/dotfiles'
alias _site='cd ~/Documents/kangzhiz.github.io'

alias vi='vim'
alias vids='vi ~/Documents/dotfiles/stow'
alias vd='vimdiff'

alias ls='ls -AFohv --color'
alias tree='tree -CIa ".git|.venv"'
alias grep='grep -Rn --color --exclude-dir={.git,.venv}'
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

# eval $(dircolors)

eval "$(pyenv init -)"
