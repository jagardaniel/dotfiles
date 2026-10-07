-- Options
vim.g.mapleader = " "

vim.o.number = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = false

vim.o.smartcase = true
vim.o.ignorecase = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.cmd.colorscheme("catppuccin")

-- Plugins
-- https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack

-- Update treesitter parses when nvim-treesitter updates
vim.api.nvim_create_autocmd("PackChanged", { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == "nvim-treesitter" and kind == "update" then
    if not ev.data.active then vim.cmd.packadd("nvim-treesitter") end
    vim.cmd("TSUpdate")
  end
end })

vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/nvim-mini/mini.nvim",
})

-- Treesitter
local parsers = {
  "bash",
  "go",
  "json",
  "python",
  "yaml",
}

require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = parsers,
  callback = function() vim.treesitter.start() end,
})

-- Mini
require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.statusline").setup()
