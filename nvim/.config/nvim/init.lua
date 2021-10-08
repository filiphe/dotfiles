local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
    "savq/paq-nvim"; -- Let paq manage itself
    -- colorscheme
    "dracula/vim";
    "morhetz/gruvbox";

    -- ui
    "kyazdani42/nvim-tree.lua";
    "kyazdani42/nvim-web-devicons";
    "majutsushi/tagbar";
    "tpope/vim-fugitive";
    "christoomey/vim-tmux-navigator";
    "mhinz/vim-grepper";
    "tpope/vim-surround";
    "gennaro-tedesco/nvim-commaround";
    "folke/which-key.nvim";
    
    -- fuzzy searching
    "nvim-lua/popup.nvim";
    "nvim-lua/plenary.nvim";
    "nvim-telescope/telescope.nvim";

    "crispgm/nvim-go";

    -- lsp stuff
    "neovim/nvim-lspconfig";
    {"nvim-treesitter/nvim-treesitter", run=vim.fn['TSUpdate']}; -- update the parsers on update
    "glepnir/lspsaga.nvim";
    "nvim-lua/lsp_extensions.nvim";
    "hrsh7th/nvim-cmp";
    "hrsh7th/cmp-nvim-lsp";
    "saadparwaiz1/cmp_luasnip";
    "romgrk/nvim-treesitter-context";

    -- snippets
    "L3MON4D3/LuaSnip";
    "hrsh7th/vim-vsnip";
    "hrsh7th/vim-vsnip-integ";
    "rafamadriz/friendly-snippets";
    "hrsh7th/cmp-buffer";
    --"andersevenrud/compe-tmux";


    -- modeline
    "hoob3rt/lualine.nvim";


    -- git
    "lewis6991/gitsigns.nvim";

    -- autopairs
    "windwp/nvim-autopairs";
}

--[[ require('go').config.update_tool('quicktype', function(tool)
    tool.pkg_mgr = 'npm'
end)
require('go').setup({}) ]]

require('nvim-tree').setup {
}

require('settings') -- lua/settings.lua
require('maps') -- lua/maps.lua
require('lsp') -- lua/lsp.lua

