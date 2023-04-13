
vim.g.mapleader = ","

-- adds "jk" as an aternative way to exit insert mode
vim.keymap.set("i", "jk", "<Esc>")


-- leader y adds the next yanked text to the system clipboard
vim.keymap.set("n", "<leader>y", [["+y]])

-- enters file explore mode
vim.keymap.set("n", "<leader>fs", ":Ex<cr>")

-- saves current file 
vim.keymap.set("n", "<leader>w", ":w!<cr>")

-- copies line down
vim.keymap.set("n", "<leader>d", "yyp")

-- sources current file 
vim.keymap.set("n", "<leader>sr", ":so<cr>")

--move blocks of code highlighted in visual mode
vim.keymap.set("v","J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v","K", ":m '<-2<cr>gv=gv")
