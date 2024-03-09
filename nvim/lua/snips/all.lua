-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua
require('luasnip.session.snippet_collection').clear_snippets 'all'

local ls = require 'luasnip'

local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

local s = ls.snippet
local c = ls.choice_node
local d = ls.dynamic_node
local i = ls.insert_node
local t = ls.text_node
local sn = ls.snippet_node

I = 0

local function get_params(args)
  I = I + 1
  print('I = ' .. I)
  local nodes = {}
  local params = vim.split(args[1][1], ',', { plain = true, trimempty = true })
  print 'params'
  print(vim.inspect(params))
  for _, param in ipairs(params) do
    -- Assuming the parameter string might be "int count" or "string name with spaces"
    local spaceIndex = param:find ' ' -- Find first space to separate type and name
    if spaceIndex then
      local ptype = param:sub(1, spaceIndex - 1)
      local pname = param:sub(spaceIndex + 1)
      if pname and ptype then
        table.insert(nodes, string.format(' * @param %s Type %s contain', pname, ptype))
      end
    end
  end
  if #nodes == 0 then
    return sn(nil, t { ' * @param params not properly provided.' })
  else
    print(vim.inspect(nodes))
    return sn(nil, { t(nodes) })
  end
end

ls.add_snippets('all', {
  s(
    'test',
    fmta(
      [[
/**
* @brief <desc>
<dp>
**/
<type> <name>(<params>);
]],
      {
        type = i(1, 'type'),
        name = i(2, 'name'),
        params = i(3),
        dp = d(4, get_params, { 3 }),
        desc = i(5, 'description'),
      }
    )
  ),
})
