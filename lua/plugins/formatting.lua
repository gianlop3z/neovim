return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				php_cs_fixer = {
					command = "tools/php-cs-fixer/vendor/bin/php-cs-fixer",
				},
			},
			formatters_by_ft = {
				["python"] = { "black", "isort" },
				["php"] = { "php_cs_fixer" },
			},
		},
	},
}
