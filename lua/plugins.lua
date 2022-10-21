return require('packer').startup(function(use, vim)
    -- packer 
    use 'wbthomason/packer.nvim'
    --lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true},
    }
    -- nerdtree
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'nvim-tree/nvim-web-devicons'
    -- catppuccin theme
    use {
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.g.catpuccin_flavour = 'mocha'
            require('catppuccin').setup()
            vim.api.nvim_command 'colorscheme catppuccin'
        end
    }
    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons'
        }
    }
    -- autopairs
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup{} end
    }
    -- surroundings
    use 'tpope/vim-surround'
    -- bufferline
    use {
       'akinsho/bufferline.nvim',
       tag = 'v3.*',
       requires = 'nvim-tree/nvim-web-devicons'
    }
    -- telescope
    use {
       'nvim-telescope/telescope.nvim',
       tag = '0.1.0',
       requires = {{'nvim-lua/plenary.nvim'}}
    }
    -- impulse
    use {
       'chrsm/impulse.nvim',
       config = function()
           require('impulse').setup({
               api_key = 'secret_e1qYPu2DV22ySQpw7tDjkz1KFvkxBUz8CcxbOr9ahBB'
           })
       end,
       requires = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim'}
    }
    -- treesitter
    use {
       'nvim-treesitter/nvim-treesitter',
       run = function() require('nvim-treesitter.install').update({with_sync = true}) end
    }
    --lsp
    use 'neovim/nvim-lspconfig'
    -- autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'ray-x/lsp_signature.nvim'
    use {'tzachar/cmp-tabnine', after = "nvim-cmp", run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp'}
    use 'onsails/lspkind-nvim'
end)