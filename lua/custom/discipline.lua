local M = {}

function M.ninja()
	---@type table?
	local id
	local ok = true
	local keys = { "h", "j", "k", "l", "w", "b" }

	for _, key in ipairs(keys) do
		local count = 0
		local timer = assert(vim.loop.new_timer())
		local map = key
		vim.keymap.set("n", key, function()
			if vim.v.count > 0 then
				count = 0
			end
			if count >= 10 and vim.bo.buftype ~= "nofile" then
				ok, id = pcall(vim.notify, "Remember you are a ninja", vim.log.levels.WARN, {
					title = "Wait!",
					icon = "🥷",
					replace = id,
					keep = function()
						return count >= 10
					end,
				})
				if not ok then
					id = nil
					return map
				end
			else
				count = count + 1
				timer:start(2000, 0, function()
					count = 0
				end)
				return map
			end
		end, { expr = true, silent = true })
	end
end

return M
