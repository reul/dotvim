execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set list
set bg=dark

"always use spaces
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4

"set textwidth and color last column
set textwidth=140
set colorcolumn=140

set hlsearch

"automatically remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"vim: syntax=vimrc
