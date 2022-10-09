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

alias brewdump='rm -f Brewfile; brew bundle dump'
alias brewdeps='brew deps --tree --installed'

alias vi='nvim'
alias vid='vi .'

alias ls='ls -AFohv --color'
alias tree='tree -CIa ".git|.venv|node_modules"'
alias grep='grep -Rn --color --exclude-dir={.git,.venv,node_modules}'
alias rm='rm -i'

alias g='git'
alias gs='g s'

alias gg='exit'

### functions

karabinerbackup() {
    cp ~/.config/karabiner/karabiner.json ~/Documents/dotfiles/misc/karabiner.json
}

mdprev() {
    pandoc $1 > temp.html
    open temp.html
    sleep 2
    rm -f temp.html
}
