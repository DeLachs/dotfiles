-- setup lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- load lazy and plugins list
require("lazy").setup({
  -- theme
  "navarasu/onedark.nvim",
  -- statusline
  "nvim-lualine/lualine.nvim",
  -- indent lines and functions markers
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  -- gitsigns
  { "lewis6991/gitsigns.nvim", opts = {} },
  -- colored comments (
  --    PERF: fully optimised
  --    HACK: hmmm, this looks a bit funky
  --    TODO: what else?
  --    NOTE: adding a note
  --    FIX: this needs fixing
  --    WARNING: ???
  --    TEST: test
  -- )
  { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  -- file tree to the left like in vs code
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  -- code highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- rainbow delimiters
  "HiPhish/rainbow-delimiters.nvim",
  -- telescope search
  { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim"} },

  -- lsp
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
      -- lspsaga for code actions
      "nvimdev/lspsaga.nvim",
    },
  },
  -- autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
})

