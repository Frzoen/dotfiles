vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Sane escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", {noremap = false})

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Set highlight on search
vim.o.hlsearch = true

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- toggle relative number

vim.keymap.set("n", "<leader>rn", ":set relativenumber! <CR>")

-- escape to clear highlight
vim.keymap.set("n", "<Esc>", function()
  vim.cmd("noh")
end, {})

-- center the search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy to system clipboard
vim.opt.clipboard = 'unnamedplus'

-- twilight
vim.api.nvim_set_keymap("n", "tw", ":Twilight<enter>", {noremap = false})

-- center search line
vim.keymap.set("c", "<CR>", function()
  return vim.fn.getcmdtype() == "/" and "<CR>zzzv" or "<CR>"
end, { expr = true })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- bufferline
