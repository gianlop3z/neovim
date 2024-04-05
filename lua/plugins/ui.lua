return {
	{
		"folke/noice.nvim",
		keys = function()
			return {}
		end,
		opts = {
			lsp = {
				progress = {
					enabled = false,
				},
			},
			routes = {
				{
					filter = {
						event = "notify",
						find = "No information available",
					},
					opts = { skip = true },
				},
			},
		},
	},
	{
		"nvimdev/dashboard-nvim",
		opts = function(_, opts)
			opts.config.header = vim.split(string.rep("\n", 8), "\n")

			opts.config.center = {
				{
					action = "Telescope file_browser",
					desc = " Browse files",
					icon = "󱞊 ",
					key = "b",
				},
				{
					action = "Telescope find_files",
					desc = " Find file",
					icon = " ",
					key = "f",
				},
				{
					action = "Telescope oldfiles",
					desc = " Recent files",
					icon = " ",
					key = "r",
				},
				{
					action = "Telescope live_grep",
					desc = " Find text",
					icon = " ",
					key = "g",
				},
				{
					action = "qa",
					desc = " Quit",
					icon = " ",
					key = "q",
				},
			}
		end,
	},
}
