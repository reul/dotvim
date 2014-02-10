"enable pathogen
execute pathogen#infect()

"enable syntax, filetype detection and indentation by filetype
syntax on
filetype plugin on
filetype plugin indent on

"display line numbers
set number

"display space characters
set list

"dark bg
set bg=dark

"always use spaces
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4

"set textwidth and color last column
set textwidth=140
set colorcolumn=140

"highlight searched terms
set hlsearch

"enable omnicomplete
set omnifunc=syntaxcomplete#Complete

"automatically remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"keep nerdtree open
let NERDTreeQuitOnOpen = 0

"show nerdtree when vim is opened with no file passed as argument
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

"vim: syntax=vimrc

