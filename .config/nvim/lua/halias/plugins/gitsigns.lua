local gitsigns_setup, gitsigns = pcall(require, "gitsigns")
if not gitsigns_setup then
	return
end

gitsigns.setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

		local function map(mode, l, r, opts)
			opts = opts or {}
			opts.buffer = bufnr
			vim.keymap.set(mode, l, r, opts)
		end

		-- go to next hunk
		map("n", "<leader>gn", function()
			if vim.wo.diff then
				return "<leader>gn"
			end
			vim.schedule(function()
				gs.next_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })

		--go to prev hunk
		map("n", "<leader>gN", function()
			if vim.wo.diff then
				return "<leader>gN"
			end
			vim.schedule(function()
				gs.prev_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })

		map("n", "<leader>gb", function()
			gs.blame_line({ full = true })
		end)
		map("n", "<leader>gB", gs.toggle_current_line_blame)
		map("n", "<leader>dt", gs.diffthis)
	end,
})
