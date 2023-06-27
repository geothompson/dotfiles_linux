
--require('colorbuddy').colorscheme('snazzybuddy')
vim.cmd[[colorscheme neon]]
-- function ColorMyPencils(color)
-- 	color = color or "tokyonight"
-- 	vim.cmd.colorscheme(color)
--
 vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FunctionCall", { bg = blue })
 vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
 vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
 vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
 vim.api.nvim_set_hl(0, "NonText", { fg = "grey" })
-- vim.api.nvim_set_hl(0, "Comment", { bg = white })
--
-- end
--
-- ColorMyPencils()
