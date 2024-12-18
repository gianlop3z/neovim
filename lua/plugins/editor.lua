return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		opts = {
			filters = {
				dotfiles = true,
				custom = { "^%.venv%..*" },
				exclude = { "%.env$", "%.env%..*" },
			},
		},
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
	},
	{
		"stevearc/dressing.nvim",
		opts = {
			select = {
				backend = { "fzf_lua" },
				fzf_lua = {
					winopts = {
						width = 0.5,
						height = 0.5,
						preview = { hidden = "hidden" },
					},
				},
			},
		},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			modes = {
				char = { enabled = false },
			},
		},
	},
	{
		"smjonas/inc-rename.nvim",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
