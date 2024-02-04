return {
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	-- colorscheme
	"ofirgall/ofirkai.nvim",

	-- navigate between tmux and vim with <c-hjkl>
	"christoomey/vim-tmux-navigator",

	-- different color for current highlight search
	"qxxxb/vim-searchhi",

	-- zoom on split
	"szw/vim-maximizer",

	-- tpope god
	"tpope/vim-commentary",
	"tpope/vim-surround",

	-- lua functions necessary for other plugins
	"nvim-lua/plenary.nvim",

	-- icons
	--	"kyazdani42/nvim-web-devicons",

	-- autocompletion
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",

	-- snippets
	--	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- configuring lsp servers
	"onsails/lspkind.nvim",

	"WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",

	-- open floating window
	"metalelf0/nvim-floatedit",

	-- nvim-peekup (yank/paste registers management)
	"gennaro-tedesco/nvim-peekup",
}
