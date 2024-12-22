return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    indent = {
      enabled = true,
      indent = {
        char = "▎",
      },
      scope = {
        char = "▎",
        hl = "Conceal",
        only_current = true,
      },
      animate = { enabled = false },
    },
  }
}
