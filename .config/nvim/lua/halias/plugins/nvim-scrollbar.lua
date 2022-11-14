local nvim_scrollbar_setup, nvim_scrollbar = pcall(require, "scrollbar")
if not nvim_scrollbar_setup then
	return
end

nvim_scrollbar.setup({
	handle = {
		color = "#404040",
	},
})
