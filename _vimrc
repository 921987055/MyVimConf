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
set backspace=2

noremap K 5k
noremap J 5j
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
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
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'sainnhe/everforest'
Plug 'preservim/nerdtree'

call plug#end()

" Important!!
if has('termguicolors')
	set termguicolors
endif
colorscheme everforest
set background=dark
let g:everforest_background = 'soft'
let g:everforest_transparent_background = 1

" nerd tree config
map <C-n> :NERDTreeToggle<CR>

inoremap ,( ()<++><Esc>F(a
inoremap ,[ []k++><Esc>F[a
inoremap ,< <><++><Esc>F<F<a
inoremap ," ""<++><Esc>F"i
inoremap ,' ''<++><Esc>F'i
inoremap ,{ {<Enter><Enter>}<++><Esc>ki<Tab>
inoremap ,; <Esc>/<++><CR>:nohlsearch<CR>c4l;<Enter>
inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap ,` ``<++><Esc>F`i

autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b ****<Space><++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~<Space><++><Esc>F~hi
autocmd Filetype markdown inoremap ,i **<Space><++><Esc>F*i
autocmd Filetype markdown inoremap ,d ``<Space><++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>
autocmd Filetype markdown inoremap ,# <Esc>0i#<Space><Esc>ji 

autocmd Filetype javascript inoremap ,c console.log();<Enter><++><Esc>k$hi
autocmd Filetype javascript inoremap ,$ ${}<++><Esc>F{a
