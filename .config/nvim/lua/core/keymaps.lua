vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- show todo panel
vim.keymap.set('n', '<leader>q', ':TodoQuickFix<CR>')
-- show todo search with telescope
vim.keymap.set('n', '<leader>qt', ':TodoTelescope<CR>')

