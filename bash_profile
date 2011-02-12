#!bash

# load completion scripts
for file in ~/.dotfiles/completion/*; do source $file; done

# load aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# load rvm environment
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# prompt settings
GIT_PS1_SHOWDIRTYSTATE=1

# setup promt
PS1='\[\e[1;32m\]\u@\h: \[\e[1;34m\]\w\[\e[0;36m\]$(__git_ps1 " (%s)") \[\e[1;34m\]\$ \[\e[m\]'

# load custom configuration
[[ -f ~/.bash_local ]] && source ~/.bash_local

