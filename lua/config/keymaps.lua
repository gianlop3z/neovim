-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("custom.discipline")

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local function use_key_warning(key)
	vim.notify("You have to use the `" .. key .. "` key on normal mode", vim.log.levels.WARN, {
		title = "Ups!",
	})
end

-- Discipline setup
discipline.ninja()

-- Dismiss notifications from `nvim-notify`
keymap.set("n", "<leader>nd", function()
	require("notify").dismiss({ silent = true, pending = true })
end)

-- Disable arrow navigation
keymap.set({ "n", "i" }, "<Left>", function()
	use_key_warning("h")
end)
keymap.set({ "n", "i" }, "<Down>", function()
	use_key_warning("j")
end)
keymap.set({ "n", "i" }, "<Up>", function()
	use_key_warning("k")
end)
keymap.set({ "n", "i" }, "<Right>", function()
	use_key_warning("l")
end)

-- Enter on command-line mode
keymap.set("n", ";", ":", { nowait = true })

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select the current file content
keymap.set("n", "sa", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", "<Cmd>split<CR>", opts)
keymap.set("n", "sv", "<Cmd>vsplit<CR>", opts)

-- Move the cursor between split windows
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Remove search highlights
keymap.set("n", "ch", "<Cmd>noh<CR>", opts)
