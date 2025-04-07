return {
  -- add gruvbox
  { "catppuccin/nvim", opts = {
    flavour = "frappe",
  } },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
