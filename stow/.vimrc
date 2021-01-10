" general settings

syntax on
filetype plugin indent on

set nocompatible noerrorbells
set title
set number relativenumber nowrap scrolloff=3
set ruler showcmd wildmenu
set bg=dark
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
set incsearch hlsearch ignorecase smartcase
set nobackup noswapfile undofile undodir=~/.vim/undo viminfo=""
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete


" plugins

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax'
call plug#end()

let g:netrw_banner = 0
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
let g:sneak#label = 1
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

colorscheme gruvbox


" custom keymappings

let mapleader = " "

nnoremap <C-j> 8j
nnoremap <C-k> 8k
nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>= :res +
nnoremap <leader>- :res -
nnoremap <leader>] :vert res +
nnoremap <leader>[ :vert res -
nnoremap <leader><leader> :noh<CR>
nnoremap <leader>w :w<CR>

vnoremap <C-j> 8j
vnoremap <C-k> 8k

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>

autocmd BufWritePre * :%s/\s\+$//e
