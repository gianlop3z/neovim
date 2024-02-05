return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			setup = {
				ruff_lsp = function()
					return true
				end,
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
				"pyright",
				"black",
				"isort",
				-- typescript / javascript
				"typescript-language-server",
				"tailwindcss-language-server",
				"prettier",
				-- docker
				"dockerfile-language-server",
			})
		end,
	},
}
