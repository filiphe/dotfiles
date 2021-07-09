let mapleader=" "
let maplocalleader=" "

nnoremap <silent>gh :Lspsaga lsp_finder<CR>
nnoremap <silent>gs :Lspsaga signature_help<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map <C-n> :NERDTreeToggle<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use <Tab> as trigger keys
"imap <Tab> <Plug>(completion_smart_tab)
"imap <S-Tab> <Plug>(completion_smart_s_tab)
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Center file when j / k
nnoremap j jzz
nnoremap k kzz

" Center matches when searching
nnoremap N Nzz
nnoremap n nzz

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Copy
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg
nnoremap <leader>y "+y

" Paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Window navigation
nnoremap <c-left>  <c-w>5>
nnoremap <c-down>  <c-w>5-
nnoremap <c-up>    <c-w>5+
nnoremap <c-right> <c-w>5<
"nnoremap <c-h>     <c-w>h
"nnoremap <c-j>     <c-w>j
"nnoremap <c-k>     <c-w>k
"nnoremap <c-l>     <c-w>l
nnoremap <m-h>     <c-w>v
nnoremap <m-j>     <c-w>s<c-w>j
nnoremap <m-k>     <c-w>s
nnoremap <m-l>     <c-w>v<c-w>l
