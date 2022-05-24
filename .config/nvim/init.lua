-- Include plugins and plugin settings
require('plugins')

-- General options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Keymaps
vim.keymap.set('i', 'jj', '<Esc>')
vim.g.mapleader = ','
