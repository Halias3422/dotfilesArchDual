-- return {
-- 	"glepnir/lspsaga.nvim",
-- 	config = function()
-- local saga_status, saga = pcall(require, "lspsaga")
-- if not saga_status then
-- 	return
-- end

-- saga.setup({
-- 	-- keybinds for navigation in lspsaga window
-- 	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
-- 	-- use enter to open file with finder
-- 	finder_action_keys = {
-- 		open = "<CR>",
-- 	},
-- 	-- use enter to open file with definition preview
-- 	definition_action_keys = {
-- 		edit = "<CR>",
-- 	},
-- 	code_action_lightbulb = { enable = false },
-- })
-- 	end,
-- }

return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({})
	end,
}