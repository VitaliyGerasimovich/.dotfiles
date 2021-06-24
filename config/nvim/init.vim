" Howki
" vim: set foldmethod=marker

" Runtimepath
set runtimepath^=~/.config/nvim/
set runtimepath+=~/.config/nvim/after
set runtimepath+=~/.config/nvim/lua
set runtimepath+=~/.config/nvim/plugin

let &packpath = &runtimepath

" Language settings
let $LANG='en'
set langmenu=en

" Runtime settings
source $VIMRUNTIME/delmenu.vim

" Source all part of vimrc
for f in split(glob("~/.config/nvim/vrcs/*.vim"), '\n')
  exe 'source' f
endfor
