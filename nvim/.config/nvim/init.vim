
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.local/share/nvim/plugged')
" Colors
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'

" UI
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax and alignment
Plug 'w0rp/ale'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'roxma/nvim-completion-manager'

" Go plugins
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go', 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }

" Python plugins
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'nvie/vim-flake8', {'for': 'python'}

" Language plugins
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'NLKNguyen/vim-maven-syntax', { 'for': 'xml' }
Plug 'rust-lang/rust.vim', { 'for': 'rust'}
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'parkr/vim-jekyll'
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'pearofducks/ansible-vim'
Plug 'saltstack/salt-vim'
Plug 'hashivim/vim-vagrant'
Plug 'dleonard0/pony-vim-syntax'
Plug 'NLKNguyen/vim-docker-compose-syntax'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'martinda/Jenkinsfile-vim-syntax'

call plug#end()

" Signify
let g:signify_sign_add = '+'
let g:signify_sign_delete = "-"
let g:signify_sign_change = '~'
let g:signify_sign_delete_first_line = g:signify_sign_delete
let g:signify_sign_changedelete = g:signify_sign_change
let g:signify_vcs_list = ['git', 'hg']
let g:signify_sign_show_count = 0

" moving around, searching and patterns
set ignorecase
set smartcase

" displaying text
set termguicolors

let gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_italicize_comments=1
let g:gruvbox_invert_selection = 1
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="soft"
let g:onedark_terminal_italics=1
let base16colorspace=256
set background=dark
colorscheme onedark

syntax on
set lazyredraw
set list
set listchars=tab:▸\ ,extends:›,precedes:‹,nbsp:·,trail:·
set nowrap
set number
set relativenumber
set scrolloff=1
set sidescrolloff=5

" syntax, highlighting and spelling
set cursorcolumn
set cursorline
set colorcolumn=95
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" multiple windows
set hidden
set laststatus=2

" message and info
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
let mapleader=" "
let maplocalleader=" "
syn match myTodo contained "\<\(TODO\|FIXME\)"
hi def link myTodo Todo
" }}}

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

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
nnoremap <c-h>     <c-w>h
nnoremap <c-j>     <c-w>j
nnoremap <c-k>     <c-w>k
nnoremap <c-l>     <c-w>l
nnoremap <m-h>     <c-w>v
nnoremap <m-j>     <c-w>s<c-w>j
nnoremap <m-k>     <c-w>s
nnoremap <m-l>     <c-w>v<c-w>l
set splitbelow
set splitright

" Center file when j / k
nnoremap j jzz
nnoremap k kzz

" Center matches when searching
nnoremap N Nzz
nnoremap n nzz

" Go settings
let g:go_hightlight_functions            = 1
let g:go_highlight_methods               = 1
let g:go_highlight_structs               = 1
let g:go_highlight_operators             = 1
let g:go_highlight_build_constraints     = 1

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

au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>d :sp <CR>:exe "GoDoc" <CR>
au Filetype go nnoremap <leader>r :GoRun %<CR>

" Python settings
au Filetype py set tabstop=4
au Filetype py set softtabstop=4
au Filetype py set shiftwidth=4
au Filetype py set textwidth=99
au Filetype py set expandtab
au Filetype py set autoindent
au Filetype py set fileformat=unix
au FileType py let python_highlight_all=1

" Ansible settings
let g:ansible_extra_keywords_highlight = '1'
let g:ansible_attribute_highlight = 'ab'
let g:ansible_name_highlight = 'b'

" Markdown settings
let vim_markdown_preview_toggle = 1 " Display images on toggle preview C-p
let vim_markdown_preview_browser = 'chromium'
let vim_markdown_preview_use_xdg_open = 1

" ale
let g:ale_sign_column_always = 1
let g:ale_python_flake8_options = "--max-line-length=120"
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1

