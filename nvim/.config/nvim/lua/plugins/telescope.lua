return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
      vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Live grep" })

      require("telescope").load_extension("ui-select")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
}
