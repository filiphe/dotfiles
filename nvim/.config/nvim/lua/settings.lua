local o = vim.o -- global options
local wo = vim.wo -- window options
local bo = vim.bo -- buffer options


-- setting colorscheme doesn't work in lua?
vim.g.syntax_on = true
--vim.cmd('syntax on')
vim.cmd('colorscheme dracula')

o.background = 'dark'
o.termguicolors = true
o.list = true
wo.number = true
wo.relativenumber = true
o.showcmd = true -- show command as it's being typed
o.showmode = true -- show which mode we're in

o.scrolloff=1
o.sidescrolloff=5
o.lazyredraw = true

vim.opt.completeopt={'menuone','noinsert','noselect'}
vim.opt.shortmess:append({c = true})
vim.opt.formatoptions:append({r = true, o = true, n = true})

-- don't be noisy
o.errorbells = false
o.visualbell = false

-- crosshairs
o.cursorline = true
o.cursorcolumn = true
o.colorcolumn = '95'

o.undolevels = 500

o.expandtab = true
o.shiftround = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.swapfile = false
o.backup = false
o.history = 1000
o.mouse = ''

wo.wrap = false

-- modeline setup
require('lualine').setup {
  options = {
    theme = 'dracula',
    section_separators = {'', ''},
    component_separators = {'', ''}
  },
}

-- compe setup
require('compe').setup {
	enabled = true;
	autocomplete = true;
	debug = false;
	min_length = 1;
	preselect = 'enable';
	throttle_time = 80;
	source_timeout = 200;
	resolve_timeout = 800;
	incomplete_delay = 400;
	max_abbr_width = 100;
	max_kind_width = 100;
	max_menu_width = 100;
	documentation = {
		border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
		winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
		max_width = 120,
		min_width = 60,
		max_height = math.floor(vim.o.lines * 0.3),
		min_height = 1,
	};

	source = {
		path = true;
		buffer = true;
		calc = true;
		nvim_lsp = true;
		nvim_lua = true;
		vsnip = true;
		treesitter = true;
	};
}
require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
})
local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

require('gitsigns').setup {
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
}
