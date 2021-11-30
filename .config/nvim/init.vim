call plug#begin('~/.config/nvim/plugged')

Plug 'tamelion/neovim-molokai'

"Telescope fzf
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'itchyny/lightline.vim'

" Git plugs
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'akinsho/bufferline.nvim'

Plug 'tpope/vim-commentary'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" COC Config
"source ~/.config/nvim/vimscript/coc.vim

source ~/.config/nvim/vimscript/nvim-tree.vim

"bufferline setup
nnoremap <silent><Tab> :BufferLineCycleNext<CR>


" PLUGS CALL
lua require('halias')

"Plugs remaps
nmap <space>tt <Plug>(toggle-lsp-diag)
nmap <space>tu <Plug>(toggle-lsp-diag-underline)
nmap <space>tv <Plug>(toggle-lsp-diag-vtext)

"Telescope
nnoremap <C-f> :Telescope find_files<Cr>
nnoremap<C-g> :Telescope git_files<Cr>
nnoremap <C-p> :Telescope live_grep<Cr>
nnoremap <C-b> :Telescope buffers<Cr>
nnoremap <C-y> :Telescope lsp_document_diagnostics<CR>


" My vimrc

set nocompatible
set showmatch
set ignorecase
syntax on
set termguicolors
set encoding=utf-8
set clipboard=unnamedplus
set cursorline
hi Cursorline guibg=gray13
hi Normal guibg=#181A1B
colorscheme molokai




set noshowmode
set signcolumn=number

set completeopt=menu,menuone,noselect

" Cursor appearance configuration
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Set numbers
set number relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Splits open to the right

set splitbelow splitright
" remaps
nmap <C-Q> :q<CR>
imap <C-Q> <ESC>:q<CR>
nmap <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>
nmap <S-J> 10j<CR>
nmap <S-K> 10k<CR>
nmap <Space>k :bd<CR>
nnoremap Y y$

" shortcuts for splits navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap jk <ESC>

" set highlight for search and disable it with space
set hlsearch
set incsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"set visual chars
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" remove trailing whitespaces
autocmd FileType c,h autocmd BufWritePre <buffer> %s/\s\+$//e

" handle mouse split resizing
set mouse=a

set cc=80
set tabstop=4
set shiftwidth=4
set showcmd
set scrolloff=10

set nobackup
set noswapfile
set cinoptions+=+1