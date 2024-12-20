return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "lua",
        "python",
        "go",
        "rust",
        "yaml",
        "json",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "svelte"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
