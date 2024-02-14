return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				dartls = {},
				intelephense = {},
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				-- lua
				"stylua",
				"lua-language-server",
				-- python
				"ruff",
				"pyright",
				-- php
				"intelephense",
				"php-cs-fixer",
			})
		end,
	},
}
