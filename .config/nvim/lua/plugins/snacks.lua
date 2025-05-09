return {
  "folke/snacks.nvim",
  opts = {
    picker = {}
  },
  keys = {
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },

    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
  }
}
