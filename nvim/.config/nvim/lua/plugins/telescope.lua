return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { { "nvim-lua/plenary.nvim" }, {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    }, },
    config = function()
      require("telescope").setup({
        pickers = {
          live_grep = {
            additional_args = function(opts)
              return { "--hidden" }
            end
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          {
            "fzf"
          },
        },
      })
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
      vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Live grep" })

      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("fzf")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
}
