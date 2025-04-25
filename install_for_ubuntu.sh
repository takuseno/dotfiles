./install_for_common.sh

sudo apt-get update
sudo apt-get install \
    software-properties-common \
    curl \
    wget \
    tig \
    tmux \
    neovim \
    silversearcher-ag \
    ripgrep \
    clangd-9 \
    peco \
    ranger \
    ffmpegthumbnailer \
    highlight \
    w3m \
    w3m-img \
    mediainfo

# install neovim
wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim.appimage
chmod +x nvim.appimage
sudo mkdir -p /usr/local/bin
sudo mv nvim.appimage /usr/local/bin/nvim

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
# enable nodenv in this process
export PATH="$HOME/.nodenv/bin:$PATH"
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
