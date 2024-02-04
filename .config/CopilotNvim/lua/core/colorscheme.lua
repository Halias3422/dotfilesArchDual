-- background color
vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi Normal guibg=#181818" })

-- number line color
vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi LineNr guibg=#262626" })
vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi LineNr guifg=#999999" })

-- split line color
vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi VertSplit guifg=#999999" })

-- floating window borders
vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi FloatBorder guifg=#606060" })

local status, _ = pcall(vim.cmd, "colorscheme ofirkai")
if not status then
	print("Colorscheme not found !")
	return
end

-- cursorline color
vim.api.nvim_set_hl(0, "Cursorline", { bg = "gray15" })

-- telescope colors
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#606060" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#606060" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "#f8f8f0" })
