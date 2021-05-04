""" general settings

syntax on
filetype plugin indent on

set nocompatible
set noerrorbells
set termguicolors
set shellcmdflag=-ic
set number
set relativenumber
set nowrap
set scrolloff=5
set colorcolumn=
set title
set cursorline
set ruler
set showcmd
set wildmenu
set splitbelow
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set foldmethod=indent
set foldlevel=99
set foldtext=FoldText()
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set nobackup
set noswapfile
set undofile
set undodir=/tmp//
set viminfo=""
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete
set bg=dark


""" plugins and plugin settings

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/goyo.vim'
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
let g:sneak#prompt = 'SNEAK > '
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#target_labels = 'bcdefgmnqstuwyzBCDEFGHIJKLMNQSTUWYZ;/?'
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

augroup nord-overrides
    autocmd!
    au ColorScheme nord hi Normal guifg=#d8dee9 ctermbg=NONE guibg=NONE
    au ColorScheme nord hi CursorLine ctermbg=NONE guibg=NONE
    au ColorScheme nord hi Folded guibg=NONE
    au ColorScheme nord hi ColorColumn guibg=#2e3440
    au ColorScheme nord hi Sneak guifg=#1b1b1b guibg=#d08770
augroup END
colorscheme nord


""" custom keymappings

let mapleader = " "

nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <C-f> :file<CR>
nnoremap <C-h> :h<Space>
nnoremap <C-j> zj
nnoremap <C-k> zk
nnoremap J }
nnoremap K {
nnoremap H 0
nnoremap L $
nnoremap == <C-w>=
nnoremap <silent><leader><leader> :noh <bar> set nospell<CR>
nnoremap <silent><leader>\ :exe "set cc=" . (&cc == "" ? "80" :"")<CR>
nnoremap <silent><leader>s :setlocal spell! spelllang=en_us<CR>
nnoremap <silent><leader>g :Goyo<CR>
nnoremap <leader><Enter> <C-z>
nnoremap <leader>w :w<CR>
nnoremap <leader>q q:<Space>
nnoremap <leader>ra :%s/
nnoremap <leader>rl :s/
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>f zA
nnoremap <leader>- zM
nnoremap <leader>= zR
nnoremap <leader>J J
nnoremap <leader>K kJ
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

vnoremap H 0
vnoremap L $
vnoremap <leader>r :s/

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>


""" functions

autocmd BufWritePre * :%s/\s\+$//e

function! FoldText()
    let linecount = v:foldend - v:foldstart + 1
    return '+ ' . linecount . ' lines folded '
endfunction
