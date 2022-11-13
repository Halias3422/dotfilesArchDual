local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.load_netrwPlugin = 1

nvimtree.setup({
	open_on_setup = false,
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	diagnostics = {
		enable = true,
	},
	view = {
		mappings = {
			list = {
				{ key = { "h", "l" }, action = "edit" },
			},
		},
	},
})
