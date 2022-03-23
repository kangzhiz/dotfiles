PATH=$PATH:~/Documents/dotfiles/scripts

### autocompletion

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

### prompt

setopt PROMPT_SUBST

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
PROMPT='%F{blue}%~%F{green}${vcs_info_msg_0_} %F{red}$ %f'

### fzf settings

source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
export FZF_CTRL_T_COMMAND="fd --type f -HL --color=always"
export FZF_ALT_C_COMMAND="fd --type d -HL --color=always"
export FZF_DEFAULT_COMMAND=${FZF_CTRL_T_COMMAND}
export FZF_DEFAULT_OPTS='--inline-info --reverse --ansi --height=21'

### custom aliases

alias ..='cd ..'
alias _desk='cd ~/Desktop'
alias _docs='cd ~/Documents'
alias _down='cd ~/Downloads'
alias _dots='cd ~/Documents/dotfiles'
alias _site='cd ~/Documents/kangzhiz.github.io'

alias vi='nvim'
alias vis='vi -S .vim/Session.vim'

alias ls='ls -AFohv --color'
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
alias pipup='pip install --upgrade pip'
alias pips='pip list'
alias pipsu='pips --user'

alias gg='exit'

### startup

eval "$(pyenv init -)"
