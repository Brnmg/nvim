vim.g.mapleader = " "

-- better escaping
vim.keymap.set('i', 'kj','<Esc>', {noremap = true})
vim.keymap.set('i', 'jk','<Esc>', {noremap = true})

-- window movement
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- resize window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- move line a la vscode
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- nvim-tree mappings
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true})

-- bufferline mappings
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {noremap = true})
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>', {noremap = true})
vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer1<CR>', {noremap = true})
vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer2<CR>', {noremap = true})
vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer3<CR>', {noremap = true})
vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer4<CR>', {noremap = true})
vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer5<CR>', {noremap = true})
vim.keymap.set('n', '<leader>w', ':bdelete<CR>', {noremap = true})

-- telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fw', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

