./install_for_common.sh

# setup homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
    curl \
    wget \
    tmux \
    tig \
    tmux \
    pyenv \
    pyenv-virtualenv \
    nodenv \
    the_silver_searcher \
    neovim
brew install vim --with-lua

echo "alias ls='ls -G'" >> ~/.bashrc

echo "if [ -f ~/.bashrc ]; then" >> ~/.bash_profile
echo ". ~/.bashrc" >> ~/.bash_profile
echo "fi" >> ~/.bash_profile
