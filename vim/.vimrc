syntax on

set noerrorbells
set nu rnu
set nowrap
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab
set smartindent
set smartcase
set noswapfile
set incsearch

" find
set path+=**
set wildmenu
set wildignore+=**/.git/**
set wildignore+=**/node_modules/**

" explorer
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=20

" plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-python/python-syntax'
call plug#end()

" theme 
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set bg=dark

" syntax
let g:python_highlight_all=1

" keymappings
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>w :w<CR>

" commands
command ClearBuffer execute '%bd|e#'
