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
					function()
						local builtin = require("telescope.builtin")
						builtin.live_grep()
					end,
					desc = "Open `telescope` live grep picker",
				},
				{
					"<leader>tf",
					function()
						local builtin = require("telescope.builtin")
						builtin.find_files({ hidden = true })
					end,
					desc = "Open `telescope` file finder picker",
				},
				{
					"<leader>to",
					function()
						local builtin = require("telescope.builtin")
						builtin.buffers()
					end,
					desc = "Open `telescope` open buffers picker",
				},
				{
					"<leader>tb",
					function()
						local telescope = require("telescope")
						telescope.extensions.file_browser.file_browser()
					end,
					desc = "",
				},
				{
					"<leader>tr",
					function()
						local builtin = require("telescope.builtin")
						builtin.resume()
					end,
					desc = "Open `telescope` resume picker",
				},
				{
					"<leader>td",
					function()
						local builtin = require("telescope.builtin")
						builtin.diagnostics()
					end,
					desc = "Open `telescope` diagnostics picker",
				},
				{
					"<leader>tt",
					function()
						local builtin = require("telescope.builtin")
						builtin.treesitter()
					end,
					desc = "Open `telescope` treesitter picker",
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
