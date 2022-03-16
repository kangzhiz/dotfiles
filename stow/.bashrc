### Prompt

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/$/ /'
}

COLOR1='\[\033[1;36m\]'
COLOR2='\[\033[1;32m\]'
PS1="${COLOR1}\W ${COLOR2}\$(git_branch)${COLOR1}\$ \[\e[m\]"
