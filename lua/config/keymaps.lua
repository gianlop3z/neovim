-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("custom.discipline")

local keymap = vim.keymap

local options = { noremap = true, silent = true }

local function use_key_warning(key)
	vim.notify("You have to use the `" .. key .. "` key on normal mode", vim.log.levels.WARN, {
		title = "Ups!",
	})
end

-- Discipline setup
discipline.ninja()

-- Dismiss notifications from `nvim-notify`
keymap.set("n", "nd", function()
	require("notify").dismiss({ silent = true, pending = true })
end)

-- Disable arrow navigation
keymap.set({ "n", "i", "v" }, "<Left>", function()
	use_key_warning("h")
end)
keymap.set({ "n", "i", "v" }, "<Down>", function()
	use_key_warning("j")
end)
keymap.set({ "n", "i", "v" }, "<Up>", function()
	use_key_warning("k")
end)
keymap.set({ "n", "i", "v" }, "<Right>", function()
	use_key_warning("l")
end)

-- Enter on command-line mode
keymap.set("n", ";", ":", { nowait = true })

-- Split window
keymap.set("n", "ss", "<Cmd>split<CR>", options)
keymap.set("n", "sv", "<Cmd>vsplit<CR>", options)

-- Move the cursor between split windows
keymap.set("n", "sh", "<C-w>h", options)
keymap.set("n", "sj", "<C-w>j", options)
keymap.set("n", "sk", "<C-w>k", options)
keymap.set("n", "sl", "<C-w>l", options)

-- Remove search highlights
keymap.set("n", "ch", "<Cmd>noh<CR>", options)

-- Show line diagnostics
keymap.set("n", "sd", "<Cmd>lua vim.diagnostic.open_float()<CR>", options)

-- Replace in word
keymap.set("n", "riw", "viwP", options)

-- Clone current line/selection down
keymap.set("n", "cd", "yyPj", options)

-- Close all but current buffer
keymap.set("n", "<leader>bdo", "<Cmd>%bd|edit#|bd#<CR>", { desc = "Delete all but current buffer" })
