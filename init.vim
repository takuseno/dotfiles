if &compatible
	set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('tpope/vim-fugitive')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/denite.nvim')
	call dein#add('scrooloose/nerdtree')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('editorconfig/editorconfig-vim')
	call dein#add('leafgarland/typescript-vim')
	call dein#add('derekwyatt/vim-scala')
	call dein#add('kchmck/vim-coffee-script')
	call dein#add('Quramy/tsuquyomi')
	call dein#add('othree/yajs.vim')
	call dein#add('artur-shaik/vim-javacomplete2')
	call dein#add('fatih/vim-go')
	call dein#add('vim-airline/vim-airline')
	call dein#add('godlygeek/tabular')
	call dein#add('plasticboy/vim-markdown')
	call dein#add('Yggdroot/indentLine')
	call dein#add('tacroe/unite-mark')
	call dein#add('Xuyuanp/nerdtree-git-plugin')
	call dein#add('t9md/vim-quickhl')
	call dein#add('digitaltoad/vim-pug')
	call dein#add('simeji/winresizer')
	call dein#add('nanotech/jellybeans.vim')
	call dein#add('hdima/python-syntax')
	call dein#add('glidenote/memolist.vim')
	call dein#add('severin-lemaignan/vim-minimap')
	call dein#add('w0rp/ale')
	call dein#add('itchyny/vim-cursorword')
	call dein#add('elzr/vim-json')
	call dein#add('lervag/vimtex')

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

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

" base settings
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
set cursorline
set conceallevel=0
hi clear CursorLine

" fill columns after 80 with red
execute "set colorcolumn=" . join(range(81, 9999), ',')
highlight ColorColumn ctermbg=52 guibg=#2c2d27

" close brackets and quotes
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" assign esc to Ctrl-C
inoremap <C-c> <Esc>

" denite settings
noremap <C-P> :Denite file/rec<CR>
noremap <C-F> :Denite file<CR>
noremap <C-M> :Denite mark<CR>
noremap <C-G> :Denite grep<CR>
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_ops', ['--follow', '--no-group', '--no-color'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#map('normal', 'j', '<denite:nop>', 'noremap')
call denite#custom#map('normal', 'k', '<denite:nop>', 'noremap')
call denite#custom#map('normal', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('insert', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('normal', '<C-P>', '<denite:move_to_previous_line>')
call denite#custom#map('insert', '<C-P>', '<denite:move_to_previous_line>')

" Git
noremap <C-D> :Gdiff<CR>
noremap <C-B> :Gblame<CR>
noremap <C-S> :Gstatus<CR>

" deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#syntax#min_key_word_length = 3
let g:deoplete#enable_cursor_hold_i = 1
let g:deoplete#cursor_hold_i_time = 300
let g:deoplete#lock_buffer_name_pattern = '\*ku\*'

" ale setting
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:airline#extensions#ale#enabled = 1

" mark setting
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

let python_highlight_all = 1

" typescript
let g:tsuquyomi_disable_quickfix = 1

" disable conceals
let g:vim_markdown_folding_disabled = 1
let g:tex_conceal=''
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0

" memo setting
let g:memolist_memo_suffix = "md"

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
