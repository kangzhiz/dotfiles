" general settings

syntax on
filetype plugin indent on

set nocompatible noerrorbells termguicolors
set title
set number relativenumber nowrap scrolloff=3
set ruler showcmd wildmenu
set incsearch hlsearch
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
set nobackup noswapfile undofile undodir=~/.vim/undo viminfo=""
set bg=dark
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete


" plugins

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax'
call plug#end()

let g:netrw_banner = 0
let g:nord_cursor_line_number_background = 1
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
highlight Normal guibg=#1e1e1e guifg=#d8dee9


" custom keymappings

let mapleader = " "

nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <C-h> :%s/
nnoremap <leader><leader> :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Up> :res -1<CR>
nnoremap <Down> :res +1<CR>
nnoremap <Left> :vert res -1<CR>
nnoremap <Right> :vert res +1<CR>

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>

autocmd BufWritePre * :%s/\s\+$//e
