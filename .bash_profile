# Terminal styling
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]$ '

# Aliases
alias ll="ls -alh"
alias ls="gls --color=auto -h"

alias grep="grep --color"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

export EDITOR="vim"

# Multiple bashes write to history
shopt -s histappend

