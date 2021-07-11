-- maps.lua

local map = vim.api.nvim_set_keymap

-- leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables
vim.g.maplocalleader = ' '

options = { noremap = true }
-- nerdtree
map('n', '<C-n>', ':NERDTreeToggle<CR>', options)

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
map('i', '<expr><C-Space>', 'compe#complete()', options)
map('i', '<expr><CR>', "compe#confirm('<CR>')", options)
map('i', '<expr><C-e>', "compe#close('<C-e>')", options)
map('i', '<expr><C-f>', "compe#scroll({ 'delta': +4 })", options)
map('i', '<expr><C-d>', "compe#scroll({ 'delta': -4 })", options)


-- VSnip
-- Expand
map('i', '<expr><C-j>', "vsnip#expandable()?'<Plug>(vsnip-expand)':'<C-j>'", { noremap = false})
map('s', '<expr><C-j>', "vsnip#expandable()?'<Plug>(vsnip-expand)':'<C-j>'", { noremap = false})
-- Expand or jump
map('i', '<expr><C-l>', "vsnip#available(1)?'<Plug>(vsnip-expand-or-jump)':'<C-l>'", { noremap = false})
map('s', '<expr><C-l>', "vsnip#available(1)?'<Plug>(vsnip-expand-or-jump)':'<C-l>'", { noremap = false})

-- Jump forward or backward
map('i', '<expr><Tab>', "vsnip#jumpable(1)?'<Plug>(vsnip-jump-next)':'<Tab>'", { noremap = false})
map('s', '<expr><Tab>', "vsnip#jumpable(1)?'<Plug>(vsnip-jump-next)':'<Tab>'", { noremap = false})
map('i', '<expr><S-Tab>', "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<S-Tab>'", { noremap = false})
map('s', '<expr><S-Tab>', "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<S-Tab>'", { noremap = false})




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
