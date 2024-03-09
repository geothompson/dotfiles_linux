vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- switch to normal mode with jk
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>y', [["+y]])

-- quick access to netrw
vim.keymap.set('n', '<leader>fs', ':Ex<cr>')

-- quick save
vim.keymap.set('n', '<leader>w', ':w!<cr>')

-- quick duplicate line
vim.keymap.set('n', '<leader>d', 'yyp')

vim.keymap.set('n', '<leader>sr', ':so<cr>')

--move blocks of code
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<leader>y', [["+y]])
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- enters file explore mode
vim.keymap.set('n', '<leader>fs', ':Ex<cr>')

-- saves current file
vim.keymap.set('n', '<leader>w', ':w!<cr>')

-- copies line down
vim.keymap.set('n', '<leader>d', 'yyp')

-- sources current file
vim.keymap.set('n', '<leader>sr', ':so %<cr>')

--move blocks of code highlighted in visual mode
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
