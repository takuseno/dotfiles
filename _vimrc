if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundleCheck
call neobundle#end()

let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>
noremap <C-F> :Unite file<CR>
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>

set nu
syntax on
colorscheme molokai
set t_Co=256
set title
set list
set listchars=tab:>_,trail:-,extends:>,precedes:<,nbsp:%
set autoindent
set tabstop=4
set encoding=utf-8

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

filetype plugin indent on
