local bufferline_setup, bufferline = pcall(require, "bufferline")
if not bufferline_setup then
	return
end

bufferline.setup({
	options = {
		-- numbers = function(opts)
		-- 	return string.format("%s.", opts.ordinal)
		-- end,
		offsets = {
			{
				filetype = "NvimTree",
				text = "NvimTree",
				highlight = "Directory",
				separator = true,
			},
		},
		separator_style = "slant",
	},
})
