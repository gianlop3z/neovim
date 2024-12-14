return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "*",
		build = ":TSUpdate",
		event = { "BufReadPost" },
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"lua",
			},
		},
	},
}
