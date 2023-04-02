let mapleader = " "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set ts=4
set softtabstop=4
set shiftwidth=4
set autoindent

noremap K 5k
noremap J 5j
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'connorholyday/vim-snazzy'
Plug 'instant-markdown/vim-instant-markdown'
Plug 'sainnhe/everforest'

call plug#end()

" Important!!
if has('termguicolors')
	set termguicolors
endif
colorscheme everforest
set background=dark
let g:everforest_background = 'soft'
let g:everforest_transparent_background = 1

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
"inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

inoremap ; <ESC>$a;
inoremap <C-;> ;
