return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				php_cs_fixer = {
					command = "vendor/friendsofphp/php-cs-fixer",
				},
			},
			formatters_by_ft = {
				["python"] = { "black", "isort" },
				["dart"] = { "dart_format" },
				["php"] = { "php_cs_fixer" },
			},
		},
	},
}
