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
"Plug 'preservim/nerdcommenter'

"Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
"Plug 'https://github.com/preservim/tagbar'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
"Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'posva/vim-vue'
"Plug 'leafoftree/vim-vue-plugin'
Plug '/vim-scripts/AutoComplPop'

Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
"Plug 'leafoftree/vim-vue-plugin'

call plug#end()

"
" Display gitbranch name in lightline bar
"
let g:lightline = {
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \			 [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
	  \ },
	  \ 'component_function': {
	  \   'gitbranch': 'gitbranch#name'
	  \ },
	  \ }

" Display total lines number in lightline bar
let g:lightline.component = {
	\ 'lineinfo': '%3l:%-2c/ %L'
	\ }

"
" Ag pluging configuration
"
let g:ag_working_path_mode="r"
let g:ag_highlight=0
"let g:ag_format="%f:%l:%m"

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

" Use system clipboard
	set clipboard+=unnamedplus

set smarttab
set autoindent

set tabstop=2
set softtabstop=4
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
"set guifont=Roboto\ Mono:h14
"set guifont=Source\ Code\ Pro:h15

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey25

" Config for CtrlP plugin
	let g:ctrlp_show_hidden = 1
	set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*\\node_modules\\*

" Set whitespace characters
	":set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.
" Togglr whitespace characters
	nnoremap <S-Space> :set list!<CR>


"
" Mapping
"
	nnoremap <A-0> :NERDTreeToggle <CR>
	nnoremap <A-o> :NERDTreeToggle <CR>
	nnoremap <A-`> :NERDTreeToggle <CR>
	nnoremap <F2> :w <CR>
	nnoremap <A-F3> :q <CR>
	nnoremap <A-x> :qa!<CR>
	nnoremap <BS> X
	nnoremap <Space> i<Space><Esc>l
	nnoremap <C-n> :tabnew<CR>
	nnoremap <S-F4> :tabnew<CR>

	nnoremap <C-]> %
	nnoremap <C-[> %

" Switching between buffers (opened files in the same tab)
	set wildchar=<Tab> wildmenu wildmode=full
	set wildcharm=<C-Z>
	nnoremap <F12> :b <C-Z>

" Search files in project
	nnoremap <C-p> :CtrlP

" Enter insert mode
	nnoremap s i

" Ctrl-BS / Ctrl-Del
	nnoremap <C-BS> db
	nnoremap <C-Del> diw
	inoremap <C-BS> <Esc>xcb
	inoremap <C-Del> <Esc>lce

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
"map <A-w> :winc _ <bar> winc \|<CR>
"map <A-=> :winc =<CR>

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
	nnoremap <C-Enter> :put=''<CR>

" Duplicate line
	nnoremap <A-S-d> yyp

" Duplicate several lines
	xnoremap <A-S-d> m0 y '0 p

" Selection
	inoremap <S-Up> <Esc><S-V>
	inoremap <S-Down> <Esc><S-V>

	nnoremap <S-Up> <S-V>
	nnoremap <S-Down> <S-V>
	nnoremap <S-Left> vh
	nnoremap <S-Right> vl
	nnoremap <C-S-Left> vb
	nnoremap <C-S-Right> ve
	nnoremap <S-kHome> v<kHome>
	nnoremap <S-kEnd> v<kEnd>

	inoremap <S-Left> <Esc>v
	inoremap <S-Right> <Esc>lv
	inoremap <C-S-Left> <Esc>vb
	inoremap <C-S-Right> <Esc>lve
	inoremap <S-kHome> <Esc>v<kHome>
	inoremap <S-kEnd> <Esc>v<End>

	xnoremap <S-Up> <Up>
	xnoremap <S-Down> <Down>
	xnoremap <S-Left> <Left>
	xnoremap <S-Right> <Right>

" Indent blocks
	xnoremap < <gv
	xnoremap > >gv

" Move selected line up / down
	xnoremap <C-S-Up> xk<S-p><S-v>
	xnoremap <C-S-Down> xp<S-v>

" Copy-paste
	nnoremap <C-c> yiw
	nnoremap <A-kPlus> yiw
	nnoremap <C-Insert> yiw
	nnoremap <A-i> yiw
	nnoremap <S-C-Insert> yy
	nnoremap <S-Insert> p
	inoremap <S-Insert> <Esc>pa
	nnoremap <A-Insert> <C-v>

	xnoremap <C-Insert> y
	xnoremap <Enter> y

	nnoremap <C-a> ggVG

"nnoremap <A-/> :noh<CR>
	nnoremap <A-d> :noh<CR>

" Comments
	nmap <C-/> gcc
	xmap <C-/> gc gv <Esc>

" Search and replace
	nnoremap <F7> q/i\c
	nnoremap <A-F7> q:iAg!
	nnoremap <A-/> :Ag!<Space>
	nnoremap <Leader>f :AgFile!<Space>
	nnoremap <C-F7> yiwq:a%s/\<<Esc>pa\>//g<Esc>hi

map <A-w> :call ToggleExpand()<CR>

let $is_expanded=0
function ToggleExpand()
	if $is_expanded==0
		:exe "winc _ | winc \|"
		let $is_expanded=1
	else
		:exe "winc ="
		let $is_expanded=0
	endif
endfunction

nnoremap <kPlus> BvEy q:icolorscheme <Esc>p<CR>
