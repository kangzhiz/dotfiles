""" general settings

syntax on
filetype plugin indent on

set noerrorbells
set shellcmdflag=-ic
set number
set relativenumber
set nowrap
set scrolloff=5
set colorcolumn=
set title
set cursorline
set splitbelow
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=99
set foldtext=FoldText()
set hidden
set hlsearch
set ignorecase
set smartcase
set startofline
set nobackup
set noswapfile
set undofile
set undodir=~/.config/nvim/undo//
set viminfo=""
set backspace=indent,eol,start
set bg=dark
set guicursor+=n-v:hor50,r:block
set mouse=a

""" plugins and plugin settings

call plug#begin('~/.local/share/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-sneak'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
call plug#end()

let g:netrw_banner = 0

let g:nord_bold = 1
let g:nord_italic = 1

augroup nord-overrides
    autocmd!
    au ColorScheme nord hi Normal guifg=#d8dee9 ctermbg=NONE guibg=NONE
    au ColorScheme nord hi CursorLine ctermbg=NONE guibg=NONE
    au ColorScheme nord hi Folded guibg=NONE
    au ColorScheme nord hi ColorColumn guibg=#2e3440
augroup END

let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection = 0
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_enable_italic = 0
let g:gruvbox_material_ui_contrast = 'high'
let g:gruvbox_material_statusline_style = 'default' " mix, original, default
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_palette = 'material' " material, mix, original

colorscheme nord

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }

let g:sneak#prompt = 'SNEAK > '
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#target_labels = 'bcdefgmnqstuwyzBCDEFGHIJKLMNQSTUWYZ;/?'


""" custom keymappings

let mapleader = " "

nnoremap <C-b> :ls<CR>:buffer<Space>
nnoremap <silent><C-n> :bnext<CR>
nnoremap <silent><C-p> :bprev<CR>
nnoremap <C-t> :FZF<CR>
nnoremap <C-f> :file<CR>
nnoremap <C-h> :h<Space>
nnoremap <C-j> 8j
nnoremap <C-k> 8k
nnoremap J }
nnoremap K {
nnoremap H 0
nnoremap L $
nnoremap == <C-w>=
nnoremap <silent><leader><leader> :noh <bar> set nospell<CR>
nnoremap <silent><leader>\ :exe "set cc=" . (&cc == "" ? "80" :"")<CR>
nnoremap <silent><leader>s :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>q <C-z>
nnoremap <leader>w :w<CR>
nnoremap <leader>ra :%s/
nnoremap <leader>rl :s/
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>f zA
nnoremap <leader>- zM
nnoremap <leader>= zR
nnoremap <leader>J J$
nnoremap <leader>K kJ$
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader># :set nu! rnu!<CR>

inoremap <C-n> <C-x><C-o>
inoremap <C-p> <C-x><C-o>

vnoremap <C-j> 8j
vnoremap <C-k> 8k
vnoremap J }
vnoremap K {
vnoremap H 0
vnoremap L $
vnoremap <leader>r :s/
vnoremap > >gv
vnoremap < <gv


""" functions

autocmd BufWritePre * :%s/\s\+$//e

function! FoldText()
    let linecount = v:foldend - v:foldstart + 1
    return '+ ' . linecount . ' lines folded '
endfunction
