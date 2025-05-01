vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'editorconfig/editorconfig-vim'
    use 't9md/vim-quickhl'
    use 'simeji/winresizer'
    use 'nanotech/jellybeans.vim'
    use 'glidenote/memolist.vim'
    use 'RRethy/vim-illuminate'
    use 'nvim-tree/nvim-web-devicons'
    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use { 'nvim-treesitter/nvim-treesitter', tag = 'v0.9.3', run = ':TSUpdate' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = { {'nvim-lua/plenary.nvim' } } }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-cmdline"
    use "ray-x/lsp_signature.nvim"
    use "nvim-tree/nvim-tree.lua"
    use { "shellRaining/hlchunk.nvim", tag = "v1.1.0" }
    use "zbirenbaum/copilot.lua"
    use "zbirenbaum/copilot-cmp"
    use "CopilotC-Nvim/CopilotChat.nvim"
end)
