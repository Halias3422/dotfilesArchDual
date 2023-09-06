return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local setup, nvimtree = pcall(require, "nvim-tree")
		if not setup then
			return
		end

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.load_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "h", api.node.open.edit, opts("Up"))
			vim.keymap.set("n", "l", api.node.open.edit, opts("Up"))
		end

		nvimtree.setup({
			sort_by = "case_sensitive",
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
			on_attach = my_on_attach,
			-- open_on_setup = false,
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			diagnostics = {
				enable = true,
			},
		})
	end,
}
