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

-- Git
vim.api.nvim_set_keymap('n', '<C-D>', ':Gdiff<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', ':Git blame<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':Git status<CR>', { noremap = true })

-- NERDTree
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeTabsToggle<CR>', { noremap = true })

-- quickhl
vim.api.nvim_set_keymap('n', '<Space>m', '<Plug>(quickhl-manual-this)', { noremap = false })
vim.api.nvim_set_keymap('n', '<Space>M', '<Plug>(quickhl-manual-reset)', { noremap = false })
