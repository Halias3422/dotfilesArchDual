local opt = vim.opt
local api = vim.api

-- line numbers
opt.relativenumber = true
opt.number = true

api.nvim_create_autocmd("InsertEnter", { pattern = "*", command = "set norelativenumber" })

api.nvim_create_autocmd("InsertLeave", { pattern = "*", command = "set relativenumber" })

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamed")

-- disable auto-comment on new line
api.nvim_create_autocmd(
	"FileType",
	{ pattern = "*", command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" }
)

-- split windows
opt.splitright = true
opt.splitbelow = true

-- highlight search
opt.hlsearch = true
opt.incsearch = true
-- api.nvim_set_hl(0, "Incsearch", { fg = "blue" })

-- visual chars
opt.list = true
opt.listchars = { tab = "> ", trail = "-", extends = ">", precedes = "<", nbsp = "+" }
api.nvim_create_autocmd("BufWritePre", { pattern = "*", command = [[%s/\s\+$//e]] })

-- auto close nvim-tree if last buffer
-- api.nvim_create_autocmd("BufEnter", {
-- 	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
-- 	nested = true,
-- })

-- hide default mode line
opt.showmode = false

-- disable swap files
opt.swapfile = false
