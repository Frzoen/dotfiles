vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

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

-- center search line
vim.keymap.set("c", "<CR>", function()
  return vim.fn.getcmdtype() == "/" and "<CR>zzzv" or "<CR>"
end, { expr = true })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- bufferline
