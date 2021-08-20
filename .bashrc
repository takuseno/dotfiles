source ~/.git-prompt.sh
source ~/.git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h: \[\033[1;36m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
export PS1=$PS1

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(nodenv init -)"

alias vim='nvim'
