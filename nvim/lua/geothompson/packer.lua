
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
  -- Packer can manage itself
  --
  use 'wbthomason/packer.nvim'

  use "lukas-reineke/indent-blankline.nvim"
  use 'folke/neodev.nvim'

  use {
      'numToStr/Comment.nvim',
      config = function()
	  require('Comment').setup()
      end
  }

  use {
  'jim-fx/sudoku.nvim',
  cmd = "Sudoku",
  config = function()
    require("sudoku").setup({
      -- configuration ...
    })
  end
}


  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()
      require('telescope').setup({})
  end
}

 --   use ({ "ellisonleao/gruvbox.nvim",
	--   as = 'gruvbox',
	--   config = function()
	--     vim.o.background = "dark" -- or "light" for light mode
	--     vim.cmd([[colorscheme gruvbox]])
	--   end
	-- })

--    use({ 'rose-pine/neovim',
--    as = 'rose-pine',
--    config = function()
--    	vim.cmd('colorscheme onedark')
--    end
-- })
    use ("tjdevries/colorbuddy.nvim")
    use ('bbenzikry/snazzybuddy.nvim')
    use "rafamadriz/neon"
   -- require('colorbuddy').setup()

    use ('tjdevries/gruvbuddy.nvim')
    use ('nvim-treesitter/nvim-treesitter', {run =  ':ts_update'})
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use "~/dev/plugins/game_of_life.nvim"
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ('tpope/vim-surround')
    use ('tpope/vim-sleuth')
    use ('navarasu/onedark.nvim')
    use ('folke/tokyonight.nvim')
<<<<<<< HEAD
    use ('lervag/vimtex')
=======
    -- use ('lervag/vimtex')
    use('farmergreg/vim-lastplace')
    use ('mfussenegger/nvim-jdtls')
    use({
	    "L3MON4D3/LuaSnip",
	    -- follow latest release.
	    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	    -- install jsregexp (optional!:).
	    run = "make install_jsregexp"
    })
>>>>>>> bdc916a (starting to migrate to lazy.nvim)
    -- use ('vim-pandoc/vim-pandoc')
    -- use ('vim-pandoc/vim-pandoc-syntax')

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
}
 -- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
  end
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

  end)


