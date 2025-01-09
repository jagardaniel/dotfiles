return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.icons").setup()
    require("mini.pairs").setup()
    require("mini.statusline").setup()
    require("mini.git").setup()
    require("mini.diff").setup()
  end
}
