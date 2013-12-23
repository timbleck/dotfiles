#!bash

# setup $PATH for homebrew
export PATH=/usr/local/bin:$PATH

# setup rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# setup bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# setup prompt
GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[\e[1;32m\]\u@\h: \[\e[1;34m\]\w\[\e[0;36m\]$(__git_ps1 " (%s)") \[\e[1;34m\]\$ \[\e[m\]'

# load aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# load custom configuration
[[ -f ~/.bash_local ]] && source ~/.bash_local
