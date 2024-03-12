return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"typescript",
				"tsx",
				"html",
				"css",
				"php",
			},
		},
	},
}
