return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				prettier = {
					command = "node_modules/prettier/bin/prettier.cjs",
				},
			},
			formatters_by_ft = {
				["typescript"] = { "prettier" },
				["typescriptreact"] = { "prettier" },
			},
		},
	},
}
