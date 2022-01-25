"
" Plugins folder
"
call plug#begin('D:\Program Files\Neovim\plugins\')

"
" Plugins Section
"
Plug 'scrooloose/nerdtree', { 'on':	'NERDTreeToggle' }
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/tpope/vim-commentary'
"Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
"Plug 'https://github.com/preservim/tagbar'
"Plug 'https://github.com/neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'
"Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'

call plug#end()

"
" Display gitbranch name in lightline bar
"
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let g:lightline.component = {
    \ 'lineinfo': '%3l:%-2c/ %L'
    \ }

"colorscheme gruvbox-material
"set background=dark
"color gruvbox-material

colorscheme OceanicNext
set background=dark
color OceanicNext

"let g:airline_theme='minimalist'

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

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey25

"
" Mapping
"
nnoremap <A-0> :NERDTreeToggle <CR>
nnoremap <F2> :w <CR>
nnoremap <A-F3> :q! <CR>
nnoremap <A-x> :qa!<CR>
nnoremap <BS> X

" Search files in project
nnoremap <C-p> :CtrlP

" Enter insert mode
nnoremap s i

" Ctrl-BS / Ctrl-Del in insert mode
imap <C-BS> <Esc>xcb
imap <C-Del> <Esc>lce

" Undo
nnoremap <A-BS> <Esc>u
inoremap <A-BS> <C-O>u<Esc>la

" Resizing
nnoremap <S-A-Left> :vertical resize -5<CR>
nnoremap <S-A-Right> :vertical resize +5<CR>
nnoremap <S-A-Up> :resize +5<CR>
nnoremap <S-A-Down> :resize -5<CR>

" Navigatin between windows
map <A-h> :winc h<CR>
map <A-l> :winc l<CR>
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

" Expand / Collapse window
map <A-w> :winc _ <bar> winc \|<CR>
map <A-=> :winc =<CR>

" Move cursor to the top/bottom of the screen
"map <A-l> <S-l>
"map <A-h> <S-h>

" Scroll screen relatevely cursor line
nnoremap <A-k> <C-Y>
nnoremap <A-j> <C-E>
nnoremap <C-Up> <C-Y>k
nnoremap <C-Down> <C-E>j

" Preventing default behavior of S-Up/S-Down keys in visual mode
"map <S-Up> k
"map <S-Down> j

" Insert new empty line above cursor
nnoremap <S-Enter> :put!=''<CR>

" Duplicate line
nnoremap <A-S-d> yyp

" Duplicate several lines
xnoremap <A-S-d> mm y 'm p

" Selection
nnoremap <S-Up> <S-V>
nnoremap <S-Down> <S-V>

xnoremap <S-Up> <Up>
xnoremap <S-Down> <Down>

xnoremap <C-Insert> mm y 'm
xnoremap <Enter> mm y 'm

" Copy-paste
nnoremap <C-c> yiw
nnoremap <A-kPlus> yiw
nnoremap <C-Insert> yiw
nnoremap <A-i> yiw
nnoremap <S-C-Insert> yy
nnoremap <S-Insert> p
nnoremap <A-Insert> <C-v>

nnoremap <A-/> :noh<CR>
nnoremap <A-d> :noh<CR>


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
