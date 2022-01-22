call plug#begin('D:\Program Files\Neovim\plugins\')

Plug 'scrooloose/nerdtree', { 'on':	'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
"Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
"Plug 'https://github.com/preservim/tagbar'
"Plug 'https://github.com/neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:airline_theme='minimalist'

set encoding=UTF-8

set number
set expandtab

set smarttab
set autoindent

set tabstop=2
set softtabstop=2
set shiftwidth=2

set hlsearch
set incsearch

set mouse=a

set list
set nowrap
"set so=1000


" Keep cursor always on the same column while scrolling
set virtualedit=all
set nostartofline

set completeopt-=preview

set guifont=Consolas:h15

colorscheme gruvbox
set background=dark

color gruvbox
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

"
" Mapping
"
map <A-0> :NERDTreeToggle <CR>
map <F2> :w <CR>
map <A-F3> :q! <CR>
"map <F8> :TagbarToggle<CR>
map <A-x> :qa!<CR>
map <A-d> :noh<CR>

" Resizing
map <S-A-Left> :vertical resize -5<CR>
map <S-A-Right> :vertical resize +5<CR>
map <S-A-Up> :resize +5<CR>
map <S-A-Down> :resize -5<CR>

" Navigatin between windows
map <A-Left> :winc h<CR>
map <A-Right> :winc l<CR>
map <A-Up> :winc k<CR>
map <A-Down> :winc j<CR>

" Split
map <A-s> :winc s<CR>
map <A-v> :winc v<CR>

" Switching between tabs
map <A-1> :tabn 1<CR>
map <A-2> :tabn 2<CR>
map <A-3> :tabn 3<CR>
map <A-4> :tabn 4<CR>
map <A-5> :tabn 5<CR>
map <A-6> :tabn 6<CR>
map <A-7> :tabn 7<CR>
map <A-8> :tabn 8<CR>
map <A-9> :tabn 9<CR>

map <A-w> :winc _ <bar> winc \|<CR>
map <A-=> :winc =<CR>

map <A-l> <S-l>
map <A-h> <S-h>

map <A-k> <C-Y>
map <A-j> <C-E>

map <C-Up> <C-Y>k
map <C-Down> <C-E>j

"map <A-w> :call ToggleExpand()<CR>

"let $is_expanded=0
"function ToggleExpand()
"if $is_expanded==0
"	:exe "winc _ | winc \|"
"	let $is_expanded=1
"else
"	:exe "winc ="
"	let $is_expanded=0
"endif
"endfunction
