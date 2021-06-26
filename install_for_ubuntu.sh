./install_for_common.sh

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install \
    vim-gnome \
    tig \
    tmux \
    neovim \
    silversearcher-ag

# setup pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# setup nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
# enable nodenv in this process
export PATH="$HOME/.nodenv/bin:$PATH"
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
