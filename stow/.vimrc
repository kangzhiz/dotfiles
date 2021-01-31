""" general settings

syntax on
filetype plugin indent on

set nocompatible noerrorbells termguicolors shellcmdflag=-ic
set number relativenumber nowrap scrolloff=5 colorcolumn=
set title cursorline ruler showcmd wildmenu
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
set incsearch hlsearch
set splitbelow
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
highlight Colorcolumn guibg=#2e3440


""" custom keymappings

let mapleader = " "

nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <C-f> :FZF ~<CR>
nnoremap <C-h> :help<Space>
nnoremap <C-up> :res -1<CR>
nnoremap <C-down> :res +1<CR>
nnoremap <C-left> :vert res -1<CR>
nnoremap <C-right> :vert res +1<CR>
nnoremap <leader><leader> :execute "set cc=" . (&cc == "" ? "80" : "")<CR>
nnoremap <leader><Enter> <C-z>
nnoremap <leader>\ :noh<CR>
nnoremap <leader>; :!<Space>
nnoremap <leader>q q:<Space>
nnoremap <leader>w :w<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>ra :%s/
nnoremap <leader>rl :s/
nnoremap <leader>- <C-w>w
nnoremap <leader>_ <C-w>x
nnoremap <leader>= <C-w>=

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>

vnoremap <C-h> :s/

autocmd BufWritePre * :%s/\s\+$//e
