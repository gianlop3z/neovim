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
