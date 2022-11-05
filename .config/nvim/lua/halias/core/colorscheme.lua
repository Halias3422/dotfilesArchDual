local status, _ = pcall(vim.cmd, "colorscheme ofirkai")
if not status then
	print("Colorscheme not found !")
	return
end
