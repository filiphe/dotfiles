
call plug#begin('~/.nvim/plugged')
" Colors
Plug 'junegunn/seoul256.vim'
Plug 'michalbachowski/vim-wombat256mod'
Plug 'tomasr/molokai'

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'

Plug 'itchyny/lightline.vim'

Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'neovimhaskell/haskell-vim'

call plug#end()

" {{{ Settings
" moving around, searching and patterns
set ignorecase
set smartcase

" displaying text
colorscheme wombat256mod
syntax on
set fillchars=vert:│
set lazyredraw
set list
set listchars=tab:▸\ ,extends:❯,precedes:❮
set nowrap
set number
set relativenumber
set scrolloff=1
set sidescrolloff=5

" syntax, highlighting and spelling
set cursorcolumn
set cursorline

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

" folding
set foldlevel=0
set foldmethod=indent
set foldnestmax=10
set nofoldenable

" reading and writing files
set autowrite
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


let g:neocomplete#enable_at_startup = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
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
    return "⭤"
  else
    return ""
  endif
endfunction

function! LightLineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
