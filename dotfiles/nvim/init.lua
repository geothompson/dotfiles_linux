require("geothompson")
require("geothompson.packer")

vim.g.mapleader = ","

vim.keymap.set("i", "jk", "<Esc>")


vim.keymap.set("n", "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>fs", ":Ex<cr>")
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>d", "yyp")
vim.keymap.set("n", "<leader>sr", ":so<cr>")

--move blocks of code
vim.keymap.set("v","J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v","K", ":m '<-2<cr>gv=gv")

