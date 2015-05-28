if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'

NeoBundleCheck
call neobundle#end()

" Unite.vimÇÃê›íË
let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>

filetype plugin indent on

set nu
syntax on
colorscheme molokai
set title
set list
set listchars=tab:>_,trail:-,extends:>,precedes:<,nbsp:%
set autoindent
set smartindent
set tabstop=4
set encoding=utf-8

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
