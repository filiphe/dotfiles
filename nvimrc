"set nocompatible
"filetype off

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Misc vim settings
"filetype plugin indent on
"set number
"set relativenumber
"set list
"set listchars=tab:▸\ ,extends:❯,precedes:❮
"set scrolloff=5
"set noswapfile

" {{{ Settings
" moving around, searching and patterns
set ignorecase
set smartcase

" displaying text
colorscheme molokai
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


" Airline coolness
set laststatus=2
let g:airline_powerline_fonts=1
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
	let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
	let g:airline_section_c = airline#section#create(['filetype'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['%B'])
	let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()

let g:neocomplete#enable_at_startup = 1

" Color settings
"set background=dark
"colorscheme molokai
"syntax enable


"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn

nmap <F10> <nop>
set pastetoggle=<F10>

nmap <C-e> <nop>
map <C-e> :NERDTreeToggle<CR>

nmap <F5> <nop>
map <F5> :GundoToggle<CR>

" Gui specific options
set guifont=Terminess\ Powerline\ 9
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

