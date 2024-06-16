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
  -- rust stuff
  {
    'mrcjkb/rustaceanvim',
    version = '^4',
    dependencies = {
      { "lvimuser/lsp-inlayhints.nvim", opts = {} },
    },
    lazy = false,
    config = function()
      vim.g.rustaceanvim = {
        inlay_hints = {
          highlight = "NonText",
        },
        tools = {
          hover_actions = {
            auto_focus = true,
          },
        },
        server = {
          on_attach = function(client, bufnr)
            require("lsp-inlayhints").on_attach(client, bufnr)
          end
        }
      }
    end
  },
})

