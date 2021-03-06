-- maps.lua

local map = vim.api.nvim_set_keymap

-- leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables
vim.g.maplocalleader = ' '

-- commaround (commenting plugin)
map("v", "gc", "<Plug>ToggleCommaround", {} )

options = { noremap = true }
-- nerdtree
map('n', '<C-n>', ':NvimTreeToggle<CR>', options)

--LSPSaga
map('n', 'gh', ':Lspsaga lsp_finder<CR>', options)
map('n', 'gs', ':Lspsaga signature_help<CR>', options)
map('n', 'gr', ':Lspsaga rename<CR>', options)
map('n', 'gd', ':Lspsaga preview_definition<CR>', options)
map('n', '<leader>ca', ':Lspsaga code_action<CR>', options)
map('v', '<leader>ca', ':<C-U>Lspsaga range_code_action<CR>', options)
map('n', 'K', ':Lspsaga hover_doc<CR>', options)

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', options)
map('n', '<leader>fb', '<cmd>Telescope buffesr<CR>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', options)

-- Compe
map('i', '<C-Space>', 'compe#complete()', { noremap = true, expr = true})
map('i', '<CR>', "compe#confirm('<CR>')", { noremap = true, expr = true})
map('i', '<C-e>', "compe#close('<C-e>')", { noremap = true, expr = true})
map('i', '<C-f>', "compe#scroll({ 'delta': +4 })", { noremap = true, expr = true})
map('i', '<C-d>', "compe#scroll({ 'delta': -4 })", { noremap = true, expr = true})


-- VSnip
-- Expand
map('i', '<C-k>', "vsnip#expandable()?'<Plug>(vsnip-expand)':'<C-k>'", { expr = true, silent = true})
map('s', '<C-k>', "vsnip#expandable()?'<Plug>(vsnip-expand)':'<C-k>'", { expr = true, silent = true})
-- Expand or jump
map('i', '<C-l>', "vsnip#available(1)?'<Plug>(vsnip-expand-or-jump)':'<C-l>'", {expr = true})
map('s', '<C-l>', "vsnip#available(1)?'<Plug>(vsnip-expand-or-jump)':'<C-l>'", {expr = true})

-- Jump forward or backward
map('i', '<Tab>', "vsnip#jumpable(1)?'<Plug>(vsnip-jump-next)':'<Tab>'", { expr = true})
map('s', '<Tab>', "vsnip#jumpable(1)?'<Plug>(vsnip-jump-next)':'<Tab>'", { expr = true})
map('i', '<S-Tab>', "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<S-Tab>'", { expr = true})
map('s', '<S-Tab>', "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<S-Tab>'", { expr = true})




-- Center file when moving
map('n', 'j', 'jzz', options)
map('n', 'k', 'kzz', options)

-- Center matches when searcing
map('n', 'N', 'Nzz', options)
map('n', 'n', 'nzz', options)

-- Tagbar
map('n', '<F8>', ':TagbarToggle<CR>', { noremap = false })

-- Copy/paste
map('v', '<leader>y', '"+y', options)
map('n', '<leader>Y', '"+yg', options)
map('n', '<leader>y', '"+y', options)

map('n', '<leader>p', '"+p', options)
map('n', '<leader>P', '"+P', options)
map('v', '<leader>p', '"+p', options)
map('v', '<leader>P', '"+P', options)

-- Window navigation
map('n', '<C-Left>', '<C-W>5>', options)
map('n', '<C-Down>', '<C-W>5-', options)
map('n', '<C-Up>', '<C-W>5+', options)
map('n', '<C-Right>', '<C-W>5<', options)
map('n', '<M-h>', '<C-W>v', options)
map('n', '<M-j>', '<C-W>s<C-W>j', options)
map('n', '<M-k>', '<C-W>s', options)
map('n', '<M-l>', '<C-W>v<C-W>l', options)
