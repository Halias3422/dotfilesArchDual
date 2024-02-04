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
				icons_enabled = true,
				theme = powerline,
				component_separators = "|",
				section_separators = "",
				path = 1,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"branch",
					"diff",
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
					},
				},
				lualine_c = { "filename" },
				lualine_x = { "copilot", "encoding", "fileformat", "filetype" }, -- I added copilot here
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = {},
		})
	end,
}
