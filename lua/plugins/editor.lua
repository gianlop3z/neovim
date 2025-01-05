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
				custom = { "^%.venv%..*", "node_modules" },
				exclude = { "%.env$", "%.env%..*", "%.prettierrc%.yml", "%.gitignore", "%.dockerignore" },
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
