""" general settings

syntax on
filetype plugin indent on

set nocompatible noerrorbells termguicolors shellcmdflag=-ic
set number relativenumber nowrap scrolloff=5 colorcolumn=
set title cursorline ruler showcmd wildmenu
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
set splitbelow foldmethod=indent
set incsearch hlsearch
set hidden nobackup noswapfile undofile undodir=/tmp// viminfo=""
set bg=dark
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete


""" plugins and plugin settings

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax'
call plug#end()

let g:netrw_banner = 0
let g:nord_uniform_status_lines = 1
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }
let g:sneak#label = 1
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

colorscheme nord
highlight Normal guibg=#1b1b1b guifg=#d8dee9
highlight CursorLine guibg=#1b1b1b
highlight Folded guibg=#1b1b1b
highlight Colorcolumn guibg=#2e3440


""" custom keymappings

let mapleader = " "

nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <C-f> :FZF ~<CR>
nnoremap <C-h> :h<Space>
nnoremap <C-j> zj
nnoremap <C-k> zk
nnoremap <leader><leader> :noh<CR>
nnoremap <leader><Enter> <C-z>
nnoremap <leader>q q:<Space>
nnoremap <leader>\ :exe "set cc=" . (&cc == "" ? "80" : "")<CR>
nnoremap <leader>- <C-w>v
nnoremap <leader>_ <C-w>s
nnoremap <leader>= <C-w>=
nnoremap <leader>+ <C-w>x
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>w :w<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>ra :%s/
nnoremap <leader>rl :s/
nnoremap <leader>f zA
nnoremap <leader>zz zM
nnoremap <leader>zo zR

vnoremap <leader>r :s/

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>

autocmd BufWritePre * :%s/\s\+$//e
