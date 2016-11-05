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

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    silent :e " this will reload the file without trickeries 
              "(DOS line endings will be shown entirely )
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
