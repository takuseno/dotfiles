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
    mediainfo \
    i3 \
    compton \
    feh \
    rofi \
    xclip \
    maim \
    xss-lock

# install kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# Update the paths to the kitty and its icon in the kitty desktop file(s)
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
# Make xdg-terminal-exec (and hence desktop environments that support it use kitty)
echo 'kitty.desktop' > ~/.config/xdg-terminals.list

# install neovim
wget https://github.com/neovim/neovim-releases/releases/download/v0.10.4/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
sudo mkdir -p /usr/local/bin
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

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
