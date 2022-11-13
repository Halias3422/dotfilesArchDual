local vim_move_setup, vim_move = pcall(require, "vim-move")
if not vim_move_setup then
	return
end

vim_move.setup({})
