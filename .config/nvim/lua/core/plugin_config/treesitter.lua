require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",
  -- Install parsers synchronously (only applied to `ensure_installes`)
  sync_install = false,
  auto_install = false,
  ignore_install = { },
  modules = { },
  highlight = {
    enable = true,
  },
}

