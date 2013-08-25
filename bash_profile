#!bash

# load bash completion scripts
for file in ~/.dotfiles/completion/*; do source $file; done

# load aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# configure prompt
GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\e[1;32m\]\u@\h: \[\e[1;34m\]\w\[\e[0;36m\]$(__git_ps1 " (%s)") \[\e[1;34m\]\$ \[\e[m\]'

# load custom configuration
[[ -f ~/.bash_local ]] && source ~/.bash_local
