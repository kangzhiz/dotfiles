syntax on
filetype plugin indent on

" general
set noerrorbells
set nu rnu
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set smartcase
set noswapfile
set incsearch
set hlsearch
set bg=dark

" autocomplete
set omnifunc=syntaxcomplete#Complete

" explorer
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'morhetz/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'vim-python/python-syntax'
call plug#end()

" theme
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" motion
let g:sneak#label = 1

" syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

" keymappings
let mapleader = " "
nnoremap gb :ls<CR>:buffer<Space>
nnoremap gp :bprev<CR>
nnoremap gn :bnext<CR>
nnoremap <C-j> 8j
nnoremap <C-k> 8k
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>] :vertical resize +5<CR>
nnoremap <leader>[ :vertical resize -5<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>f :FZF!<CR>

" commands
command ClearBuffer execute '%bd|e#'

" trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
