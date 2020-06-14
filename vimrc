" _   _                  _   _   _      
"| \ | | ___  ___  __ _ (_) | | | |_  __
"|  \| |/ _ \/ __|/ _` || | | | | \ \/ /
"| |\  | (_) \__ \ (_| || | | |_| |>  < 
"|_| \_|\___/|___/\__,_|/ |  \___//_/\_\
"                     |__/              
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
map R :so $MYVIMRC<CR>

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

map tu :tabe<CR>
map t- :-tabnext<CR>
map t+ :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <LEADER>sc :set spell!<CR>
map tx :r !figlet 



set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set encoding=utf-8

set scrolloff=8
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()
