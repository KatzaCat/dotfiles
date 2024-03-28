" Setting things


set nocompatible		" Disables compatibility with vi
set mouse=v			" Middle mouse ckick is paste
set hlsearch			" Hilights the search resaults
set number			" Adds line numbers
set mouse=a			" Lets you use mouse
set clipboard=unnamedplus	" Sets copy/paste to system clipboard
set cursorline			" Highlite lines

" Letting things

let mapleader = ';' 

" Enabling things

syntax on

call plug#begin("~/.vim/plugged")
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Nerdtree stuff
autocmd VimEnter * NERDTree

map <leader>l <C-w>l
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>h <C-w>h

" Coc config
let g:coc_globa_extensions = ['coc-clangd', 'coc-json', 'coc-git', 'coc-lua', 'coc-glslx']

" Gruvebox config
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox
