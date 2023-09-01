return {
	"nvim-lualine/lualine.nvim",
	config = function()
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local powerline = require("lualine.themes.powerline")

lualine.setup({
	options = {
		theme = powerline,
		component_separators = "|",
		section_separators = "",
		path = 1,
	},
})
	end,
}
