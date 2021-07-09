" plugins
runtime ./plug.vim

" keybinds
runtime ./maps.vim

" lsp
runtime ./lsp.vim

set termguicolors
set background=dark
colorscheme dracula

set lazyredraw
set list
set listchars=tab:▸\ ,extends:›,precedes:‹,nbsp:·,trail:·
set nowrap
set number
set relativenumber
set scrolloff=1
set sidescrolloff=5

set cursorcolumn
set cursorline
set colorcolumn=95

set noerrorbells
set novisualbell
set showcmd
set noshowmode
set noruler

" editing text
set formatoptions+=ron
set undolevels=500

" tabs and indenting
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4

" reading and writing files set autowrite
set nobackup
set backupdir=/tmp

" the swap file
set noswapfile
set directory=/tmp

" command line editing
set history=1000

set mouse=

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
