-- return {
-- "nvim-treesitter/nvim-treesitter",
-- build = ":TSUpdate",
-- config = function()
-- local status, treesitter = pcall(require, "nvim-treesitter.configs")
-- if not status then
-- 	return
-- end

-- -- configure treesitter
-- treesitter.setup({
-- 	-- enable syntax highlighting
-- 	highlight = {
-- 		enable = true,
-- 	},
-- 	-- enable indentation
-- 	indent = { enable = true },
-- 	-- enable autotagging (w/ nvim-ts-autotag plugin)
-- 	autotag = { enable = true },
-- 	-- ensure these language parsers are installed
-- 	ensure_installed = {
-- 		"json",
-- 		"javascript",
-- 		"typescript",
-- 		"tsx",
-- 		"yaml",
-- 		"html",
-- 		"css",
-- 		"markdown",
-- 		"svelte",
-- 		"graphql",
-- 		"bash",
-- 		"lua",
-- 		"vim",
-- 		"dockerfile",
-- 		"gitignore",
-- 	},
-- 	-- auto install above language parsers
-- 	auto_install = true,
-- })
-- end,
-- }

return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local status, treesitter = pcall(require, "nvim-treesitter.configs")
		if not status then
			return
		end

		-- configure treesitter
		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
			},
			-- auto install above language parsers
			auto_install = true,
		})
	end,
}
