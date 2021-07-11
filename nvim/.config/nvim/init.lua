require "paq" {
	"savq/paq-nvim"; -- Let paq manage itself
	-- colorscheme
	"dracula/vim";

	-- ui
	"scrooloose/nerdtree";
	"Xuyuanp/nerdtree-git-plugin";
	"majutsushi/tagbar";
	"tpope/vim-fugitive";
	"airblade/vim-gitgutter";
	"christoomey/vim-tmux-navigator";
	"mhinz/vim-grepper";
	"tpope/vim-surround";
	"tpope/vim-commentary";

	-- lsp stuff
	"neovim/nvim-lspconfig";
	{"nvim-treesitter/nvim-treesitter", run=vim.fn['TSUpdate']}; -- update the parsers on update
	"glepnir/lspsaga.nvim";
	"nvim-lua/lsp_extensions.nvim";
	"hrsh7th/nvim-compe";

	-- snippets
	"hrsh7th/vim-vsnip";
	"hrsh7th/vim-vsnip-integ";
	"rafamadriz/friendly-snippets";
	--"andersevenrud/compe-tmux";

	-- modeline
	"hoob3rt/lualine.nvim";
	"ryanoasis/vim-devicons";

	-- fuzzy searching
	"nvim-lua/popup.nvim";
	"nvim-lua/plenary.nvim";
	"nvim-telescope/telescope.nvim";
	
	

}

require('settings') -- lua/settings.lua
require('maps') -- lua/maps.lua
require('lsp') -- lua/lsp.lua

