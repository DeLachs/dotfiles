require("core.plugin_config.theme")
require("core.plugin_config.lualine")
require("core.plugin_config.todo_comments")
require("core.plugin_config.treesitter")
require("core.plugin_config.rainbow_delimiters")
require("core.plugin_config.telescope")
require("core.plugin_config.lsp_config")
require("core.plugin_config.completions")


-- HACK: needs to be the last one so that all plugins loaded and only after that
-- the file tree starts.
require("core.plugin_config.nvim_tree")
