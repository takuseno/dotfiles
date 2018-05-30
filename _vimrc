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
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/vimproc.vim', {
	\ 'build' : {
		\ 'windows' : 'tools\\update-dll-mingw',
		\ 'cygwin' : 'make -f make_cygwin.mak',
		\ 'mac' : 'make',
		\ 'linux' : 'make',
		\ 'unix' : 'gmake',
	\ }
\ }
NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'othree/yajs.vim'
NeoBundle 'artur-shaik/vim-javacomplete2'
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'geoffharcourt/one-dark.vim'
NeoBundle 'simeji/winresizer'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'hdima/python-syntax'
NeoBundle 'w0rp/ale'

NeoBundleCheck
call neobundle#end()

let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-Z> :Unite file_mru<CR>
noremap <C-F> :Unite file<CR>
noremap <C-M> :Unite mark<CR>
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
nnoremap <C-G> :Unite grep<CR>
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" Git
noremap <C-D> :Gdiff<CR>
noremap <C-B> :Gblame<CR>
noremap <C-S> :Gstatus<CR>

set nu
syntax on
colorscheme jellybeans
set t_Co=256
set background=dark
set title
set list
set listchars=tab:>_,trail:-,extends:>,precedes:<,nbsp:%
set autoindent
set tabstop=4
set encoding=utf-8
set incsearch
set laststatus=2
set hlsearch
set completeopt=menuone
set backspace=indent,eol,start

execute "set colorcolumn=" . join(range(81, 9999), ',')
highlight ColorColumn ctermbg=52 guibg=#2c2d27

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap <C-c> <Esc>

" autocmds
autocmd BufNewFile,BufRead *.{ts,tsx} set filetype=typescript
autocmd BufRead,BufNewFile *.es6 set filetype=javascript
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType typescript setlocal omnifunc=tsuquyomi#complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

filetype plugin on

" neocomplete settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_key_word_length = 3
let g:neocomplete#enable_cursor_hold_i = 1
let g:neocomplete#cursor_hold_i_time = 300
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#sources#dictionary#dictionaries = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions'
	\ }

if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.typescript = '[^. *\t]\.\w*\|\h\w*::'

let g:tex_conceal=''

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return (pumvisible() ? "\<C-y>" : "") . "\<CR>"
endfunction
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

let python_highlight_all = 1

let g:tsuquyomi_disable_quickfix = 1

let g:vim_markdown_folding_disabled = 1

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
