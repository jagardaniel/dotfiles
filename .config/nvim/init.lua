-- Global
vim.g.mapleader = " "

-- Options
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.softtabstop = -1

-- Keymaps
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Bootstrap and setup lazy.nvim
require("config.lazy")
