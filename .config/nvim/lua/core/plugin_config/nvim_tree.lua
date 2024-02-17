vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- NOTE: used to open nvim-tree, needs to be called last.
-- require("nvim-tree.api").tree.open()

