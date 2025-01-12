return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        -- python
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.mypy,
        -- bash
        -- prettier
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "html", "json", "yaml", "markdown" },
        }),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
