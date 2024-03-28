" Setting things

set nocompatible		" Disables compatibility with vi
set showmatch			" Show matching
set ignorecase			" Turn off case censitivity
set mouse=v			" Middle mouse ckick is paste
set hlsearch			" Hilights the search resaults
set incsearch           	" Incremental search
set tabstop=4           	" Number of columns occupied by a tab
set expandtab           	" Converts tabs to white space
set shiftwidth=4        	" Width for autoindents
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
