-- credit to TJ Devries
if not pcall(require, "luasnip") then
    return
end



local ls = require "luasnip"
local make = R("geothompson.snips").make
local types = require "luasnip.util.types"

ls.config.set_config {

    history = false,
    updateevents = "TextChanged,TextChangedI",
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { " << ", "NonTest" } },
            },
        },
    },
}


-- keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
-- keymap("i", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
-- keymap("s", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
--
-- keymap("i", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
-- keymap("s", "<c-b>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

local snippet = ls.s
local snippet_from_nodes = ls.sn
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choiceNode
local events = require "luasnip.util.events"

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("../../lua/geothompson/snips/ft/*.lua", true)) do
    loadfile(ft_path)()
end

vim.keymap.set({ "i", "s"}, "<c-j>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set("i", "<c-k>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set({"i", "s"}, "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

