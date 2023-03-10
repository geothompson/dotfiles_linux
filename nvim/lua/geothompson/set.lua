vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.magic = true

vim.opt.swapfile = false
vim.opt.backup   = false
vim.opt.undodir  = "/home/eeby/.vim/undodir"
vim.opt.undofile  = true

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


vim.opt.updatetime = 50
vim.opt.lazyredraw  = true

vim.opt.smartcase = true

vim.opt.colorcolumn = "80"

vim.opt.nu = true
vim.opt.conceallevel= 1



--for vimtex--
vim.cmd("syntax enable")
vim.cmd("let maplocalleader = ','")
vim.cmd("let g:tex_flavor= 'latex'")
vim.cmd("let g:vimtex_quickfix_mode= 0")

