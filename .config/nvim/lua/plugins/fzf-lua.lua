return {
  "ibhagwan/fzf-lua",
  -- Make sure mini.icons from mini.nvim loads before fzf-lua
  dependencies = { "echasnovski/mini.nvim" },
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup({
      files = {
        actions = {
          -- Open multiple files as buffers instead of quicklist
          ["default"] = require("fzf-lua.actions").file_edit
        }
      },
      winopts = {
        preview = {
          -- Always hide preview window
          hidden = "hidden"
        }
      }
    })

    vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fzf files" })
    vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Fzf buffers" })
    vim.keymap.set("n", "<leader>f/", fzf.live_grep, { desc = "Fzf live grep" })
    vim.keymap.set("n", "<leader>fh", fzf.helptags, { desc = "Fzf helptags" })
    vim.keymap.set("n", "<leader>fg", fzf.git_files, { desc = "Fzf git files" })
    vim.keymap.set("n", "<leader>fo", fzf.oldfiles, { desc = "Fzf oldfiles" })
    vim.keymap.set("n", "<leader>fc", function()
      fzf.files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "Fzf files (config)" })
  end
}
