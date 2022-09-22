return require 'packer'.startup(function()
    use 'wbthomason/packer.nvim' -- Package Manager
    use 'xiyaowong/nvim-transparent'

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup()
        end
    }
    use 'EdenEast/nightfox.nvim' -- Colorscheme
    use 'kyazdani42/nvim-tree.lua' --file tree
    use { -- boilerplate plugin for lsp integration
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    } -- Formatter
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
            { "nvim-lua/plenary.nvim" }
        }
    }
    use 'feline-nvim/feline.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'akinsho/toggleterm.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    use 'simrat39/rust-tools.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }


end)
