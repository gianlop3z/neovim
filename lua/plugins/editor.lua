return {
	{
		"telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = function()
			return {
				{
					"<leader>tg",
					"<Cmd>Telescope live_grep<CR>",
					desc = "Open `telescope` live grep picker",
				},
				{
					"<leader>tf",
					"<Cmd>Telescope find_files hidden=true<CR>",
					desc = "Open `telescope` file finder picker",
				},
				{
					"<leader>to",
					"<Cmd>Telescope buffers<CR>",
					desc = "Open `telescope` open buffers picker",
				},
				{
					"<leader>tb",
					"<Cmd>Telescope file_browser<CR>",
					desc = "Open `telescope` file browser picker",
				},
				{
					"<leader>tr",
					"<Cmd>Telescope resume<CR>",
					desc = "Open `telescope` resume picker",
				},
				{
					"<leader>td",
					"<Cmd>Telescope diagnostics<CR>",
					desc = "Open `telescope` diagnostics picker",
				},
				{
					"<leader>tm",
					"<Cmd>Telescope marks<CR>",
					desc = "Open `telescope` marks picker",
				},
			}
		end,
		config = function(_, opts)
			local telescope = require("telescope")

			opts.defaults = {
				file_ignore_patterns = {
					-- git
					".git/",
				},
			}

			opts.extensions = {
				file_browser = {
					path = "%:p:h",
					hide_parent_dir = true,
					git_status = false,
					grouped = true,
					hidden = true,
					sorting_strategy = "ascending",
					initial_mode = "normal",
					previewer = false,
				},
			}

			telescope.setup(opts)
			telescope.load_extension("file_browser")
			telescope.load_extension("fzf")
		end,
	},
	{
		"folke/flash.nvim",
		opts = {
			modes = {
				char = {
					enabled = false,
				},
			},
		},
	},
}
