require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "css",
    "csv",
    "diff",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "jq",
    "jsdoc",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "php",
    "python",
    "rust",
    "scss",
    "sql",
    "svelte",
    "swift",
    "terraform",
    "toml",
    "vim",
    "vimdoc",
    "xml",
    "yaml"
  },
  -- Install parsers synchronously (only applied to `ensure_installes`)
  sync_install = false,
  auto_install = false,
  ignore_install = { },
  modules = { },
  highlight = {
    enable = true,
  },
}

