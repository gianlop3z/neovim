return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				dartls = {},
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
			})
		end,
	},
}
