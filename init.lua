--nvim general configs
require('settings')

--keybindings
require('mappings')

--plugins
require('plugins')
require('plugins.complete')

--lualine
require('lualine').setup()

--nvim-tree
require("nvim-tree").setup()

-- bufferline
require("bufferline").setup()

-- nvim-tree
require'nvim-treesitter.configs'.setup {
    -- List os parser names
    ensure_installed = {'c', 'lua'},
    sync_install = false,
    auto_install = true,
}

--theme
vim.cmd [[silent! colorscheme catppuccin]]
