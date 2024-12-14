return {
	{
		"stevearc/conform.nvim",
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ensure_installed = {
						-- lua
						"stylua",
					},
				},
			},
		},
		opts = {
			format_on_save = true,
			formatters_by_ft = {
				lua = { "stylua" },
			},
		},
	},
}
