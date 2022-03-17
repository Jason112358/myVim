" _   _                  _   _   _      
"| \ | | ___  ___  __ _ (_) | | | |_  __
"|  \| |/ _ \/ __|/ _` || | | | | \ \/ /
"| |\  | (_) \__ \ (_| || | | |_| |>  < 
"|_| \_|\___/|___/\__,_|/ |  \___//_/\_\
"                     |__/              
"

" basic
set number
syntax on
let mapleader = " "
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set ruler

noremap <LEADER><CR> :nohlsearch<CR>
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

inoremap jj <esc>

map s <nop>
map S :w<CR>
map Q :q<CR>
map W :wq<CR>
map R :source $MYVIMRC<CR>
map r :r 

" split
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map <LEADER>j <C-w>j
map <LEADER>k <C-w>k 
map <LEADER>l <C-w>l 
map <LEADER>h <C-w>h 

map <LEADER><up> :res+5<CR>
map <LEADER><down> :res-5<CR> 
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>


" tab
map tn :tabe<CR>
map t- :-tabnext<CR>
map t= :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K


" pro
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set encoding=utf-8

let &t_ut=''

" set expandtab
" set tabstop=2
" set shiftwidth=2
" set shiftwidth=2
" set softtabstop=2
set scrolloff=8
" set tw=0
" set indentexpr=

set list
set listchars=tab:→\ ,trail:∎

map <LEADER>sc :set spell!<CR>
map tx :r !figlet 

set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2

set autochdir

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ycm-core/YouCompleteMe'
Plug 'connorholyday/vim-snazzy'

call plug#end()

color snazzy
let g:SnazzyTransparent = 0.5

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>

" ===
" === NERDTree-git
" ===
" let g:NERDTreeIndicatorMapCustom = {}

" ===
" === ale
" ===
" let b:ale_linters = ['pylint']
" let b:ale_fixers = ['autopep8','yapf']

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>

" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>


