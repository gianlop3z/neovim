return {
	{
		"neovim/nvim-lspconfig",
		event = "FileType",
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ensure_installed = {
						-- lua
						"lua-language-server",
					},
				},
			},
			{
				"saghen/blink.cmp",
				lazy = false,
				version = "v0.*",
				opts = {
					keymap = { preset = "super-tab" },
				},
			},
		},
		opts = {
			servers = {
				lua_ls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")

			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)

				lspconfig[server].setup(config)
			end
		end,
	},
}
