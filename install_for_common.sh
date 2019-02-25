cp .bashrc ~/.bashrc

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh

cp _vimrc ~/.vimrc
cp -r _vim ~/.vim
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
