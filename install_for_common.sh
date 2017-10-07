cp .bashrc ~/.bashrc

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash & mv git-completion.bash ~/.git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh & mv git-prompt.sh ~/.git-prompt.sh

cp _vimrc ~/.vimrc
cp -r _vim ~/.vim
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
