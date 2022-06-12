require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Collection of configurations for the built-in LSP client
  use 'neovim/nvim-lspconfig'

  -- Neovim interface for tree-sitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Autopair plugin
  use 'windwp/nvim-autopairs'

  -- Add indentation guides to all lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Colorscheme with VScode's light and dark theme
  use 'Mofiqul/vscode.nvim'
end)

-- nvim-lspconfig configuration
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

vim.diagnostic.config({
  signs = false,
})

vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync()]]

local servers = {'gopls', 'rust_analyzer'}

for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
  }
end

-- nvim-treesitter configuration (:TSInstall <lang>)
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  }
}

-- nvim-autopairs configuration
require('nvim-autopairs').setup{}

-- indent-blankline configuration
require('indent_blankline').setup {
  show_trailing_blankline_indent = false,
}

-- Set colorscheme
vim.g.vscode_style = 'dark'
vim.cmd([[colorscheme vscode]])
