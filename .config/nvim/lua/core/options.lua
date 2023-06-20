vim.opt.wrap = false
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.cursorline = false

-- use two spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 12

-- integrate system clipboard
vim.api.nvim_set_option("clipboard","unnamed")
