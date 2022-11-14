local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- quitting and saving
map("n", "<C-Q>", ":q<CR>", {})
map("i", "<C-Q>", "<Esc>:q<CR>", {})
map("n", "<C-S>", ":w<CR>", {})
map("i", "<C-S>", "<Esc>:w<CR>", {})

-- moving up and down
map("n", "<S-J>", "10j", { noremap = true })
map("n", "<S-K>", "10k", { noremap = true })

-- split navigation
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-l>", "<C-w>l", {})

-- split resize
map("n", "<C-Right>", ":vertical resize +5<CR>", { noremap = true })
map("n", "<C-Left>", ":vertical resize -5<CR>", { noremap = true })
map("n", "<C-Down>", ":resize +5<CR>", { noremap = true })
map("n", "<C-Up>", ":resize -5<CR>", { noremap = true })

-- escape insert mode
map("i", "jk", "<ESC>", {})

-- remove search highlight
map("n", "<Space>", ":nohlsearch | let @/ = '' <CR>", { silent = true, noremap = true })

-- plugins keymaps

-- vim-maximizer
map("n", "<Space>m", ":MaximizerToggle!<CR>", { silent = true, noremap = true })

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true, noremap = true })
map("n", "<Space>n", ":NvimTreeFocus<CR>", { silent = true, noremap = true })

-- telescope
map("n", "<C-f>", ":Telescope find_files<CR>", { noremap = true })
map("n", "<C-g>", ":Telescope git_files<CR>", { noremap = true })
map("n", "<C-p>", ":Telescope live_grep<CR>", { noremap = true })
map("n", "<C-b>", ":Telescope buffers<CR>", { noremap = true })
map("n", "<C-y>", ":Telescope lsp_document_diagnostics<CR>", { noremap = true })

-- toggle-lsp-diagnostics
map("n", "<Space>tt", "<Plug>(toggle-lsp-diag)", { noremap = true })
map("n", "<Space>tu", "<Plug>(toggle-lsp-diag-underline)", { noremap = true })
map("n", "<Space>tv", "<Plug>(toggle-lsp-diag-vtext)", { noremap = true })

-- bufferline
map("n", "<Space>]", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
map("n", "<Space>[", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
map("n", "<Space>bd", ":bdelete<CR>", { noremap = true, silent = true })
map("n", "<Space>bg", ":BufferLinePick<CR>", { noremap = true })
map("n", "<Space>bk", ":BufferLinePickClose<CR>", { noremap = true })

-- vim-move
map("n", "<Space>j", "<Plug>MoveLineDown", { noremap = true })
map("n", "<Space>k", "<Plug>MoveLineUp", { noremap = true })
map("n", "<Space>h", "<Plug>MoveCharLeft", { noremap = true })
map("n", "<Space>l", "<Plug>MoveCharRight", { noremap = true })

-- svart
map("n", "s", "<Cmd>Svart<CR>", { noremap = true })
map("n", "S", "<Cmd>SvartRegex<CR>", { noremap = true })

-- trouble
map("n", "<Space>xx", "<Cmd>TroubleToggle<CR>", { noremap = true })
map("n", "<Space>xw", "<Cmd>TroubleToggle workspace_diagnostics<CR>", { noremap = true })
map("n", "<Space>xd", "<Cmd>TroubleToggle document_diagnostics<CR>", { noremap = true })
map("n", "<Space>xq", "<Cmd>TroubleToggle quickfix<CR>", { noremap = true })

-- which keymaps
map("n", "g?", ":Fe ~/.config/nvim/keymaps.txt<CR>", { noremap = true })
