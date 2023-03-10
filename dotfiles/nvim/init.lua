require("geothompson")
require("geothompson.packer")

vim.g.mapleader = ","

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>fs", ":Ex<cr>")
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>d", "yyp")
vim.keymap.set("n", "<leader>sr", ":so<cr>")
vim.opt.nu = true



