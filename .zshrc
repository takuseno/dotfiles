# MacOS
if type brew &>/dev/null; then
  # zsh-completions
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  # zsh-autosuggestions
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

  # zsh-syntax-highlighting
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  autoload -Uz compinit
  compinit
fi

# git prompt
source ~/.git-prompt.sh

# setup prompt
autoload -Uz colors && colors
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{blue}%~%f %F{red}$(__git_ps1 "(%s)")%f'$'\n'"$ "
zstyle ':completion:*' menu select

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(nodenv init -)"

alias vim='nvim'
