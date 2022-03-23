./install_for_common.sh

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install \
    vim-gnome \
    tig \
    tmux \
    neovim \
    silversearcher-ag \
    clangd-9 \
    peco

# install lf
wget https://github.com/gokcehan/lf/releases/download/r26/lf-linux-amd64.tar.gz
tar xvf lf-linux-amd64.tar.gz
sudo mv lf /usr/local/bin/lf
rm lf-linux-amd64.tar.gz

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
