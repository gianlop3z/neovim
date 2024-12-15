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
						"lua-language-server", -- [lsp]
						"stylua", -- [formatter]
						-- python
						"ruff", -- [formatter, linter]
						"pyright", -- [lsp]
					},
				},
			},
			{
				"saghen/blink.cmp",
				version = "v0.*",
				opts = {
					keymap = { preset = "super-tab" },
				},
				dependencies = {
					{ "rafamadriz/friendly-snippets" },
				},
			},
		},
		opts = {
			servers = {
				-- lua
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				-- python
				ruff = {},
				pyright = {
					settings = {
						pyright = {
							-- using `ruff` for organize imports
							disableOrganizeImports = true,
						},
						python = {
							analysis = {
								-- ignore all files for analysis to use `ruff` for linting
								ignore = { "*" },
							},
						},
					},
				},
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
