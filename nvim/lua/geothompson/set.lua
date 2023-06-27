-- inline hints

-- vim.api.nvim_create_autocmd({'insertEnter'},{
--     callback = function () vim.lsp.buf.inlay_hint(0, true) end,
--   })
-- vim.api.nvim_create_autocmd({'insertLeave'},{
--     callback = function () vim.lsp.buf.inlay_hint(0, false) end,
--  })



 --line numbers
vim.opt.nu = true
 --relative line numbers
vim.opt.relativenumber = true

vim.api.nvim_set_option("clipboard","unnamed")vim.api.nvim_set_option("clipboard","unnamed")

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

--stops every serach result from being highlighted
vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.termguicolors = true


-- keeps cursor in middle of page
vim.opt.scrolloff = 8

vim.api.nvim_set_option("clipboard","unnamed")

-- adds column for vim diagnostics/etc
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


-- improves preformance
vim.opt.updatetime = 50
vim.opt.timeoutlen = 1000
vim.opt.lazyredraw  = true

vim.opt.smartcase = true
vim.opt.showmode = false

-- adds visual column
vim.opt.colorcolumn = "80"
vim.opt.conceallevel= 1

vim.cmd(":hi ColorColumn ctermbg=lightgrey guibg=grey")



--for vimtex--
vim.cmd("let g:leetcode_browser='chrome'")

--for vimtex--
-- vim.cmd("syntax enable")
-- vim.cmd("let maplocalleader = ','")
-- vim.cmd("let g:tex_flavor= 'latex'")
-- vim.cmd("let g:vimtex_quickfix_mode= 0")

