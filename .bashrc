source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u: \[\033[1;36m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
export PS1=$PS1

