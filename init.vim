if &compatible
	set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('Shougo/denite.nvim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('leafgarland/typescript-vim')
    call dein#add('derekwyatt/vim-scala')
    call dein#add('kchmck/vim-coffee-script')
    call dein#add('othree/yajs.vim')
    call dein#add('fatih/vim-go')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
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
    call dein#add('itchyny/vim-cursorword')
    call dein#add('elzr/vim-json')
    call dein#add('posva/vim-vue')
    call dein#add('pangloss/vim-javascript')
    call dein#add('MaxMEllon/vim-jsx-pretty')
    call dein#add('tshirtman/vim-cython')
    call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release'})
    call dein#add('rust-lang/rust.vim')
    call dein#add('tomlion/vim-solidity')
    call dein#add('peitalin/vim-jsx-typescript')
    call dein#add('xiyaowong/nvim-transparent')

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

" autocmds
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufRead,BufNewFile *.es6 set filetype=javascript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType vue syntax sync fromstart
autocmd FileType markdown let g:indentLine_enabled=0
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
set expandtab
set shiftwidth=4
set encoding=utf-8
set incsearch
set laststatus=2
set hlsearch
set completeopt=menuone
set backspace=indent,eol,start
set cursorline
set conceallevel=0
set inccommand=split
set nobackup
set nowritebackup
hi clear CursorLine

" fill columns after 80 with red
execute "set colorcolumn=" . join(range(81, 81), ',')
highlight ColorColumn ctermbg=52 guibg=#2c2d27

" transparent background
let g:transparent_enabled = v:true

" close brackets and quotes
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" terminal mode setting
tnoremap <Esc> <C-\><C-n>

" assign esc to Ctrl-C
inoremap <C-c> <Esc>

" denite settings
noremap <C-P> :<C-u>Denite file/rec<CR>
noremap <C-G> :<C-u>Denite grep<CR>
call denite#custom#var('file/rec', 'command',
    \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', {
    \ 'command': ['ag'],
    \ 'default_opts': ['-i', '--vimgrep'],
    \ 'recursive_opts': [],
    \ 'pattern_opt': [],
    \ 'separator': ['--'],
    \ 'final_opts': [],
    \ })
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> o
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> s
    \ denite#do_map('do_action', 'split')
    nnoremap <silent><buffer><expr> v
    \ denite#do_map('do_action', 'vsplit')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> <Esc>
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
endfunction
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
    imap <silent><buffer><C-o> <Plug>(denite_filter_quit)
endfunction
let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.7
call denite#custom#option('default', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ 'start_filter': v:true,
    \ 'match_highlight': v:true,
    \ })

" tab
noremap <C-T> :tabnew<CR>
noremap <C-N> :tabNext<CR>

" Git
noremap <C-D> :Gdiff<CR>
noremap <C-B> :Gblame<CR>
noremap <C-S> :Gstatus<CR>

" airline setting
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'jellybeans'

" NERDTree setting
nmap <C-f> :NERDTree<CR>

" mark setting
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

" coc setting
if has("nvim-0.5.0") || has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif
set updatetime=300

inoremap <silent><expr> <cr> pumvisible()
    \ ? coc#_select_confirm()
    \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-css',
    \ 'coc-pyright',
    \ 'coc-tsserver',
    \ 'coc-clangd',
    \ 'coc-cmake',
    \ 'coc-eslint',
    \ 'coc-texlab',
    \ 'coc-rls',
    \ 'coc-solidity',
    \ ]

" Python
let python_highlight_all = 1

" Vue
let g:vue_disable_pre_processors=1

" disable conceals
let g:vim_markdown_folding_disabled = 1
let g:tex_conceal=''
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vimtex_syntax_conceal_default = 0

" memo setting
let g:memolist_memo_suffix = "md"

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
