local pid = vim.fn.getpid()

local omnisharp_bin = 'C:/omnisharp/OmniSharp.exe'

--plugins
require('plugins')
require('plugins.complete')

--nvim general configs
require('settings')

--keybindings
require('mappings')

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

-- Comment
require('Comment').setup()

--theme
vim.cmd [[silent! colorscheme catppuccin]]

-- lua config
require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- .net config
require'lspconfig'.omnisharp.setup {
     cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
}

-- ts config
require'lspconfig'.tsserver.setup{}

-- html config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

