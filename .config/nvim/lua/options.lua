vim.opt.number = true
vim.opt.background = 'dark'
vim.opt.title = true
vim.opt.list = true
vim.opt.listchars = 'tab:>_,trail:-,extends:>,precedes:<,nbsp:%'
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.encoding = 'utf-8'
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.hlsearch = true
vim.opt.completeopt = 'menuone'
vim.opt.backspace = 'indent,eol,start'
vim.opt.cursorline = true
vim.opt.conceallevel = 0
vim.opt.inccommand = 'split'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.syntax = 'on'
vim.opt.filetype = 'plugin', 'indent', 'on'
vim.opt.signcolumn = 'yes'

vim.cmd[[colorscheme jellybeans]]

-- fill columns after 80 with red
vim.cmd[[execute "set colorcolumn=" . join(range(81, 81), ',')]]
vim.cmd[[highlight ColorColumn ctermbg=52 guibg=#2c2d27]]

-- transparent background
vim.cmd[[highlight Normal guibg=none]]
vim.cmd[[highlight NonText guibg=none]]
vim.cmd[[highlight Normal ctermbg=none]]
vim.cmd[[highlight NonText ctermbg=none]]
