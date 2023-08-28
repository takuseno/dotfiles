vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'
    use 'scrooloose/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'jistr/vim-nerdtree-tabs'
    use 'lewis6991/gitsigns.nvim'
    use 'editorconfig/editorconfig-vim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 't9md/vim-quickhl'
    use 'simeji/winresizer'
    use 'nanotech/jellybeans.vim'
    use 'glidenote/memolist.vim'
    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use { 'nvim-treesitter/nvim-treesitter', tag = 'v0.9.0', run = ':TSUpdate' }
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
end)
