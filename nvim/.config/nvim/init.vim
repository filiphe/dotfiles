
call plug#begin('~/.local/share/nvim/plugged')
" Colors
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree' 
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'itchyny/lightline.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'derekwyatt/vim-scala', {'for': 'scala' }
Plug 'tfnico/vim-gradle'
Plug 'udalov/kotlin-vim', {'for': 'kotlin'}

call plug#end()

" {{{ Settings
" moving around, searching and patterns
set ignorecase
set smartcase

" displaying text
let base16colorspace=256
colorscheme base16-tomorrow
set background=dark
syntax on
set fillchars=vert:│
set lazyredraw
set list
set listchars=eol:¬,tab:▸▸,space:· 
set nowrap
set number
set relativenumber
set scrolloff=1
set sidescrolloff=5

" syntax, highlighting and spelling
set cursorcolumn
set cursorline
set colorcolumn=79
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


" deoplete
let g:deoplete#enable_at_startup = 1
" user smartcase.
let g:deoplete#enable_smart_case = 1
" disable autocomplete
"let g:deoplete#disable_auto_complete = 1

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '', 'right' : '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"let g:lightline = {
"      \ 'colorscheme': 'jellybeans',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"":""}',
"      \ },
"      \ 'separator': { 'left': '', 'right': '' },
"      \ 'subseparator': { 'left': '', 'right': '' }
"      \ }

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
