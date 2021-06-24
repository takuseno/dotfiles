./install_for_common.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install curl wget tmux tig tmux pyenv pyenv-virtualenv
brew install vim --with-lua
brew install neovim

echo "alias ls='ls -G'" >> ~/.bashrc

echo "if [ -f ~/.bashrc ]; then" >> ~/.bash_profile
echo ". ~/.bashrc" >> ~/.bash_profile
echo "fi" >> ~/.bash_profile
