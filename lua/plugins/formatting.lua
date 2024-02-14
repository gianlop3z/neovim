return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				["python"] = { "black", "isort" },
				["dart"] = { "dart_format" },
				["php"] = { "php_cs_fixer" },
			},
		},
	},
}
