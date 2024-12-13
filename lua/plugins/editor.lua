return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<leader>fg", false, desc = "Find Files (git-files)" },
			{ "<leader>fc", false, desc = "Find Config File" },
			{ "<leader>fF", false, desc = "Find Files (cwd)" },
			{ "<leader>fR", false, desc = "Recent (cwd)" },
			{ "<leader>ft", false, desc = "Terminal (Root dir)" },
			{ "<leader>fT", false, desc = "Terminal (cwd)" },
			{
				"<leader>fgn",
				"<Cmd>FzfLua live_grep_native<CR>",
				"Open `FzfLua` performant version of `live_grep`",
			},
		},
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
