return { {
  'j-hui/fidget.nvim',
  tag = 'legacy',
  config = function()
    require("fidget").setup {
      -- options
    }
  end,
},


  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',


      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },

  },


  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', "L3MON4D3/LuaSnip", 'saadparwaiz1/cmp_luasnip', "rafamadriz/friendly-snippets" },
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },

  -- Indent guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- Format on saves
  { "elentok/format-on-save.nvim" },


  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'lewis6991/gitsigns.nvim',

  'navarasu/onedark.nvim',     -- Theme inspired by Atom
  'EdenEast/nightfox.nvim',
  'nvim-lualine/lualine.nvim', -- Fancier statusline
  'numToStr/Comment.nvim',     -- "gc" to comment visual regions/lines
  'tpope/vim-sleuth',          -- Detect tabstop and shiftwidth automatically

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim',            branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make',   cond = vim.fn.executable 'make' == 1 },
  'ggandor/leap.nvim', -- Blazingly fast navigation

  -- Integration between nvim and lazygit
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  -- Icons for file explorer
  { 'echasnovski/mini.nvim', version = false },

  -- Oil file explorer
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      }
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

}
