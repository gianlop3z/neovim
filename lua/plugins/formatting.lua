return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				php_cs_fixer = {
					command = "tools/php-cs-fixer/vendor/bin/php-cs-fixer",
					args = { "fix", "$FILENAME", "--rules=@PSR12,single_quote" },
				},
			},
			formatters_by_ft = {
				["python"] = { "black", "isort" },
				["php"] = { "php_cs_fixer" },
			},
		},
	},
}
