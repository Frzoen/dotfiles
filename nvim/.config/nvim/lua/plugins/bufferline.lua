return {
	{ "famiu/bufdelete.nvim" },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					diagnostics = "nvim_lsp",
					---@diagnostic disable-next-line: unused-local
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local s = " "
						for e, n in pairs(diagnostics_dict) do
							local sym = e == "error" and " " or (e == "warning" and " " or " ")
							s = s .. n .. sym
						end
						return s
					end,
					max_name_length = 18,
					max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
					truncate_names = true, -- whether or not tab names should be truncated
					tab_size = 18,
					enforce_regular_tabs = true,
					offsets = {
						{
							filetype = "neo-tree",
							text = "File explorer",
							text_align = "left",
							separator = true,
						},
					},
					color_icons = true,
					underline_indicator = true,
					close_command = require("bufdelete").bufdelete,
				},
			})
			vim.keymap.set("n", "<s-l>", ":BufferLineCycleNext<CR>")
			vim.keymap.set("n", "<s-h>", ":BufferLineCyclePrev<CR>")
			vim.keymap.set("n", "<s-c>", ":Bdelete<CR>")
		end,
	},
}
