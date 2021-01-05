syntax on
filetype plugin indent on

" general
set nocompatible noerrorbells
set title
set number relativenumber nowrap scrolloff=3
set ruler showcmd wildmenu
set bg=dark
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
set incsearch hlsearch ignorecase smartcase
set nobackup noswapfile undofile undodir=~/.vim/undo
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax'
call plug#end()

" plugin configs
let g:netrw_banner = 0
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:sneak#label = 1
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" colorscheme
colorscheme gruvbox

" custom keymappings
let mapleader = " "
nnoremap gb :ls<CR>:buffer<Space>
nnoremap gp :bprev<CR>
nnoremap gn :bnext<CR>
nnoremap <C-j> 8j
nnoremap <C-k> 8k
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <silent><leader>= :resize +5<CR>
nnoremap <silent><leader>- :resize -5<CR>
nnoremap <silent><leader>] :vertical resize +5<CR>
nnoremap <silent><leader>[ :vertical resize -5<CR>
nnoremap <silent><leader>h :noh<CR>
nnoremap <leader>z <C-z>
nnoremap <leader>w :w<CR>
nnoremap <leader>f :FZF!<CR>

" delete trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
