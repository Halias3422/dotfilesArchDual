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
api.nvim_set_hl(0, "Cursorline", { bg = "gray13" })

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
api.nvim_set_hl(0, "Normal", { bg = "#181A1B" })

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

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
api.nvim_set_hl(0, "Incsearch", { fg = "blue" })

-- visual chars
opt.list = true
opt.listchars = { tab = "> ", trail = "-", extends = ">", precedes = "<", nbsp = "+" }
api.nvim_create_autocmd("BufWritePre", { pattern = "*", command = [[%s/\s\+$//e]] })

-- background color
api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi Normal guibg=#181818" })

-- number line color
api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi LineNr guibg=#262626" })
api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi LineNr guifg=#999999" })

-- split line color
api.nvim_create_autocmd("ColorScheme", { pattern = "*", command = "hi VertSplit guifg=#999999" })

-- auto close nvim-tree if last buffer
api.nvim_create_autocmd("BufEnter", {
	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
	nested = true,
})

-- hide default mode line
opt.showmode = false

-- disable swap files
opt.swapfile = false
