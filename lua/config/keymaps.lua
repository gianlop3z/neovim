local map = vim.keymap.set

-- [`lazy.nvim`]: open `Lazy` tool
map("n", "<leader>l", "<Cmd>Lazy<CR>", { noremap = true, nowait = true })

-- [`gianllopez/neovim.conf`]: enter on interactive mode
map("n", ";", ":", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: replace in word
map("n", "riw", "viwP", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: split window horizontally
map("n", "ss", "<Cmd>split<CR>", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: split window vertically
map("n", "sv", "<Cmd>vsplit<CR>", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: move the cursor to left-split windows
map("n", "sh", "<C-w>h", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: move the cursor to bottom-split windows
map("n", "sj", "<C-w>j", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: move the cursor to top-split windows
map("n", "sk", "<C-w>k", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: move the cursor to right-split windows
map("n", "sl", "<C-w>l", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: remove search highlights
map("n", "ch", "<Cmd>noh<CR>", { noremap = true, nowait = true })
-- [`gianllopez/neovim.conf`]: clone current line down
map("n", "cd", "yyPj", { noremap = true, nowait = true })

-- [`neovim/nvim-lspconfig`]: organize current buffer imports
map("n", "<leader>oi", function()
	vim.lsp.buf.code_action({
		apply = true,
		context = {
			only = { "source.organizeImports" },
			diagnostics = {},
		},
	})
end, { noremap = true, nowait = true })

-- [`akinsho/bufferline`]: move to previous buffer
map("n", "H", "<Cmd>BufferLineCyclePrev<CR>", { noremap = true, nowait = true })
-- [`akinsho/bufferline`]: move to next buffer
map("n", "L", "<Cmd>BufferLineCycleNext<CR>", { noremap = true, nowait = true })
-- [`akinsho/bufferline`]: allow buffer pick by letter
map("n", "bp", "<Cmd>BufferLinePick<CR>", { noremap = true, nowait = true })
-- [`akinsho/bufferline`]: close buffers at left
map("n", "bcl", "<Cmd>BufferLineCloseLeft<CR>", { noremap = true, nowait = true })
-- [`akinsho/bufferline`]: close buffers at right
map("n", "bcr", "<Cmd>BufferLineCloseRight<CR>", { noremap = true, nowait = true })
-- [`akinsho/bufferline`]: close others buffers
map("n", "bco", "<Cmd>BufferLineCloseOthers<CR>", { noremap = true, nowait = true })

-- [`nvim-tree/nvim-tree.lua`]: toggle the file explorer
map("n", "<leader>fe", "<Cmd>NvimTreeToggle<CR>", { noremap = true, nowait = true })
-- [`nvim-tree/nvim-tree.lua`]: toggle the file explorer
map("n", "fe", "<Cmd>NvimTreeFocus<CR>", { noremap = true, nowait = true })

-- [`ibhagwan/fzf-lua`]: find files on the current directory
map("n", "<leader>ff", "<Cmd>FzfLua files<CR>", { noremap = true, nowait = true })

-- [`folke/flash.nvim`]: Flash in current buffer
map("n", "s", function()
	require("flash").jump()
end, { noremap = true })
-- [`folke/flash.nvim`]: Flash in current buffer using treesitter
map("n", "S", function()
	require("flash").treesitter()
end, { noremap = true })
