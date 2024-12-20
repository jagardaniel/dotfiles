return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.icons").setup()
    require("mini.pairs").setup()
    require("mini.statusline").setup()
  end
}
