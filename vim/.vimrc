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
set bg=dark

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
call plug#end()

let g:gruvbox_italic=1
colorscheme gruvbox

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>w :w<CR>
