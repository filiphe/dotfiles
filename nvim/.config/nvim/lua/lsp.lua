-- lsp.lua

require'lspsaga'.init_lsp_saga {
    error_sign = 'ﮊ',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
}

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = "maintained",
    autopairs = {
        enable = true
    }
}

require'treesitter-context'.setup {
    enable = true
}

local nvim_lsp = require('lspconfig')

--local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    -- Mappings.
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', '<space>gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', '<space>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)


end

nvim_lsp.bashls.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.jsonls.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.gopls.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.pylsp.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.svelte.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.tsserver.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.terraformls.setup({ on_attach=on_attach, capabilities=capabilities })
nvim_lsp.yamlls.setup({ 
    yaml = {
        schemas = {
            ['https://json.schemastore.org/github-workflow.json'] = '/.github/workflows/*.yml',
            ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = '/docker-compose.*'
        }
    },
    on_attach = on_attach,
    capabilities=capabilities,
})

require'flutter-tools'.setup {}

vim.g.completion_chain_complete_list = {
    default = {
        default = {
            complete_items = {'lsp','tmux','vsnip'},
            mode = { 'file' },
        },
        comment = {},
        string = {},
    }
}

vim.g.tagbar_type_go = {
    ctagstype = 'go',
    kinds = {
        'p:package',
        'i:imports:1',
        'c:constants',
        'v:variables',
        't:types',
        'n:interfaces',
        'w:fields',
        'e:embedded',
        'm:methods',
        'r:constructor',
        'f:functions',
    },
    sro = '.',
    kind2scope = {
        t = 'ctype',
        n = 'ntype',
    },
    scope2kind = {
        ctype = 't',
        ntype = 'n',
    },
    ctagsbin = 'gotags',
    ctagsargs = '-sort -silent',
}
