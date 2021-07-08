lua << EOF
require'lspsaga'.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = "maintained",
}

require('lualine').setup {
  options = {
    theme = 'dracula',
    section_separators = {'', ''},
    component_separators = {'', ''}
  },
}

local nvim_lsp = require'lspconfig'

local on_attach = function(client)
  require'completion'.on_attach(client)
end
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
nvim_lsp.gopls.setup({ on_attach=on_attach })
nvim_lsp.pyls.setup({ on_attach=on_attach })
nvim_lsp.yamlls.setup({ 
    yaml = {
        schemas = {
            ['https://json.schemastore.org/github-workflow.json'] = '/.github/workflows/*.yml',
            ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = '/docker-compose.*'
            }
    },
    on_attach = on_attach,
    })
EOF

"autocmd FileType go lua require'lspconfig'.gopls.setup{on_attach=on_attach}
"autocmd FileType python lua require'lspconfig'.pyls.setup{on_attach=on_attach}


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_chain_complete_list = {
			\'default' : {
			\	'default' : [
			\		{'complete_items' : ['lsp', 'snippet']},
			\		{'mode' : 'file'}
			\	],
			\	'comment' : [],
			\	'string' : []
			\	},
			\}
