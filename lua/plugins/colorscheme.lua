return {
	"okaihe/okai",
	lazy = false,
	priority = 1000,
	config = function()
		require("okai").setup({})
		vim.cmd([[colorscheme okai]])
		vim.cmd([[highlight Cursor guibg=White]])
	end,
}
