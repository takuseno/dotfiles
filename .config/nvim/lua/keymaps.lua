-- close brackets and quotes
vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', { noremap = true })
vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', { noremap = true })
vim.api.nvim_set_keymap('i', '(', '()<LEFT>', { noremap = true })
vim.api.nvim_set_keymap('i', '\'', '\'\'<LEFT>', { noremap = true })
vim.api.nvim_set_keymap('i', '\"', '\"\"<LEFT>', { noremap = true })

-- assign esc to Ctrl-C
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', { noremap = true })

-- terminal mode setting
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- tab
vim.api.nvim_set_keymap('n', '<C-T>', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-N>', ':tabNext<CR>', { noremap = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<C-G>', builtin.live_grep, {})
vim.keymap.set('n', '<C-L>', builtin.buffers, {})

-- Git
vim.api.nvim_set_keymap('n', '<C-D>', ':Gdiff<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', ':Git blame<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':Git status<CR>', { noremap = true })

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>f', ':NvimTreeFindFile<CR>', { noremap = true })

-- quickhl
vim.api.nvim_set_keymap('n', '<Space>m', '<Plug>(quickhl-manual-this)', { noremap = false })
vim.api.nvim_set_keymap('x', '<Space>m', '<Plug>(quickhl-manual-this)', { noremap = false })
vim.api.nvim_set_keymap('n', '<Space>M', '<Plug>(quickhl-manual-reset)', { noremap = false })
vim.api.nvim_set_keymap('x', '<Space>M', '<Plug>(quickhl-manual-reset)', { noremap = false })

-- LSP
vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
