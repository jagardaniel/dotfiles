-- Include plugins and plugin settings
require('plugins')

-- General options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true
vim.opt.statusline = '%f %y%m%r %= %l/%L %c '

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1

-- Keymaps
vim.keymap.set('i', 'jj', '<Esc>')
vim.g.mapleader = ','
