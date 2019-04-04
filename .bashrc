##############################
# SHELL SPECIFIC
##############################

# This should be set already depending on OS
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin"

# Add custom paths here
export PATH=$PATH:~/bin

export EDITOR="vim"

shopt -s histappend
shopt -s cdspell
shopt -s dotglob
shopt -s checkjobs
shopt -s dirspell
shopt -s autocd
shopt -s direxpand dirspell
shopt -s globstar

# trims path showing in PS1
export PROMPT_DIRTRIM=4
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000

##############################
# STYLING
##############################

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"

if [[ $EUID == 0 ]] ; then
  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi

eval $(gdircolors -b $HOME/.dircolors)

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

eval $(gdircolors ~/.dircolors)

#########################################
# ALIASES                               #
#########################################
alias ll="ls -alh"
alias ls="gls --color=auto -h"
alias grep="grep --color"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#########################################
# COMPLETIONS                           #
#########################################

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

#########################################
# MISC                                  #
#########################################

export DOTNET_CLI_TELEMETRY_OPTOUT=1

# GPG Setup for Yubikey
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
