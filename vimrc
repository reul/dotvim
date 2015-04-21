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

"don't wrap long lines
set nowrap

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

"map F3 to nerdtree
silent! map <F3> :NERDTreeFind<CR>

"map F4 to tagbar
nmap <F4> :TagbarToggle<CR>


let g:NERDTreeMapActivateNode="<F3>"

autocmd VimEnter * call StartUp()
set directory=~/tmp//,.,/var/tmp//,/tmp//

"vim: syntax=vimrc

