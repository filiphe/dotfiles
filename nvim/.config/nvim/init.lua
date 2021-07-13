require "paq" {
	"savq/paq-nvim"; -- Let paq manage itself
	-- colorscheme
	"dracula/vim";

	-- ui
    "kyazdani42/nvim-tree.lua";
    "kyazdani42/nvim-web-devicons";
	"majutsushi/tagbar";
	"tpope/vim-fugitive";
	"christoomey/vim-tmux-navigator";
	"mhinz/vim-grepper";
	"tpope/vim-surround";
    "gennaro-tedesco/nvim-commaround";

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

	-- fuzzy searching
	"nvim-lua/popup.nvim";
	"nvim-lua/plenary.nvim";
	"nvim-telescope/telescope.nvim";

    -- git
    "lewis6991/gitsigns.nvim";

    -- autopairs
    "windwp/nvim-autopairs";
}

require('settings') -- lua/settings.lua
require('maps') -- lua/maps.lua
require('lsp') -- lua/lsp.lua

