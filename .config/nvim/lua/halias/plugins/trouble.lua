local trouble_setup, trouble = pcall(require, "trouble")
if not trouble_setup then
	return
end

trouble.setup({})
