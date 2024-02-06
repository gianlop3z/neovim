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
}
