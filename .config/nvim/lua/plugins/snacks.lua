return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    indent = {
      enabled = true,
      indent = {
        char = "▎",
        hl = "Whitespace",
      },
      scope = {
        char = "▎",
        hl = "SnacksIndent",
      },
      animate = { enabled = false },
    },
  }
}
