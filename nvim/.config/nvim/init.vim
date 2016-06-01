
call plug#begin('~/.local/share/nvim/plugged')
" Colors
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

" UI
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree' 
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-unimpaired'
Plug 'majutsushi/tagbar'

" Syntax and alignment
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Completion
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Go plugins
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go', 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}

" Python plugins
Plug 'zchee/deoplete-jedi', { 'for': 'python', 'rtp': 'nvim', 'do': 'make'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'nvie/vim-flake8', {'for': 'python'}

" Language plugins
Plug 'derekwyatt/vim-scala', {'for': 'scala' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'tfnico/vim-gradle', { 'for': 'gradle' }
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'NLKNguyen/vim-maven-syntax', { 'for': 'xml' }
Plug 'rust-lang/rust.vim', { 'for': 'rust'}
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'kongo2002/fsharp-vim', { 'for': 'fsharp' }
Plug 'ekalinin/Dockerfile.vim'

Plug 'jamessan/vim-gnupg'

call plug#end()

" {{{ Settings
" moving around, searching and patterns
set ignorecase
set smartcase

" displaying text
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Set colorscheme based on time of day
set background=dark
colorscheme PaperColor
"if strftime("%H") < 18
"  set background=light
"else
"  set background=dark
"endif

"let base16colorspace=256
"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox

syntax on
set lazyredraw
set list
set listchars=eol:↲,tab:▸▸,space:· 
set nowrap
set number
set relativenumber
set scrolloff=1
set sidescrolloff=5

" syntax, highlighting and spelling
set cursorcolumn
set cursorline
set colorcolumn=99
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

" editing text
set formatoptions+=ron
set nojoinspaces
set undolevels=500

" tabs and indenting
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=2

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

" FZF
nnoremap <silent> <c-p> :FZF<cr>
nnoremap <silent> <leader>of :FZF %:p:h<cr>
nnoremap <silent> <leader>ob :Buffers<cr>

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

" Center matches when searching
nnoremap N Nzz
nnoremap n nzz

" Easy align
vmap     <leader>as   <plug>(EasyAlign)

" deoplete
let g:deoplete#enable_at_startup         = 1
" use smartcase.
let g:deoplete#enable_smart_case         = 1
let g:jedi#popup_select_first            = 0

" Go settings
let g:deoplete#sources#go#align_class    = 1
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

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_python_flake8_args = ['-m', 'flake8', '--ignore=E501']

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)


let g:lightline = {
      \ 'colorscheme': 'PaperColor_light',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ }
      \ }

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
