syntax on
set expandtab
set tabstop=3
set sts=3
set sm
set fdm=indent
set nofoldenable
set laststatus=2
set number
set encoding=utf-8
set hlsearch
highlight Search ctermbg=blue

set statusline =
set statusline +=\ %<%F\     " full path
set statusline +=%r
set statusline +=%m          " modified flag 
set statusline +=%=%5l       " current line
set statusline +=/%L         " total lines
set statusline +=%4v\        " virtual column number

let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

execute pathogen#infect()

