
vim.g.mapleader = ","

--save and source
vim.keymap.set("n", "<leader><leader>x", ":w!<cr>:source %<cr>")


-- adds "jk" as an aternative way to exit insert mode
vim.keymap.set("i", "jk", "<Esc>")



-- leader y adds the next yanked text to the system clipboard
vim.keymap.set("n", "<leader>y", [["+y]])

-- enters file explore mode
vim.keymap.set("n", "<leader>fs", ":Ex<cr>")

--get buffer number
vim.keymap.set("n", "<leader>b", ":echo nvim_get_current_buf()<cr>")


-- saves current file 
vim.keymap.set("n", "<leader>w", ":w!<cr>")

-- copies line down
vim.keymap.set("n", "<leader>d", "yyp")

-- sources current file 
vim.keymap.set("n", "<leader>sr", ":so %<cr>")

--move blocks of code highlighted in visual mode
vim.keymap.set("v","J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v","K", ":m '<-2<cr>gv=gv")

--window navigation
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>j", "<C-w>j")

--window resizing
vim.keymap.set("n", "wj", "<C-w>-")
vim.keymap.set("n", "wk", "<C-w>+")
vim.keymap.set("n", "wh", "<C-w><")
vim.keymap.set("n", "wl", "<C-w>>")

--toggle TSPlayground
vim.keymap.set("n", "<leader>pg", ":TSPlaygroundToggle<cr><C-w>h")
vim.keymap.set("n", "<leader>po", ":TSPlaygroundToggle<cr><C-w>h<Esc>")

--inline toggle
vim.keymap.set("n", "<leader>io", ":lua InlineOn()<cr>")
vim.keymap.set("n", "<leader>if", ":lua InlineOff()<cr>")




