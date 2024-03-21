-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
require('lazy').setup({
  -- Use `opts = {}` to force a plugin to be loaded.
  --  This is equivalent to:
  --    require('Comment').setup({})
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'geothompson/plugins/gitsigns',


  require 'geothompson/plugins/which-key',

  require 'geothompson/plugins/telescope',

  require 'geothompson/plugins/lspconfig',
  require 'geothompson/plugins/vimjotter',

  -- require 'geothompson/plugins/autopairs',


  require 'geothompson/plugins/conform',

  require 'geothompson/plugins/cmp',

  require 'geothompson/plugins/tokyonight',

  require 'geothompson/plugins/todo-comments',

  require 'geothompson/plugins/mini',

  require 'geothompson/plugins/treesitter',

  require 'geothompson/plugins/harpoon',

  -- require 'geothompson/plugins/debug',

  require 'geothompson.plugins/indent_line',

  require 'geothompson/plugins.melange-nvim',

  require 'geothompson/plugins.trouble',
  require 'geothompson/plugins.copilot',


  require("geothompson.plugins.fugitive"),
  {
    'folke/neodev.nvim',
    opts = {},
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    -- priority = 1000,
    -- config = function()
    --   vim.cmd.colorscheme 'catppuccin-macchiato'
    -- end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine-moon'
    end,

  },


  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
