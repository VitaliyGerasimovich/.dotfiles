" Howki
" vim: set foldmethod=marker

" Runtimepath
set runtimepath^=~/.config/nvim/ runtimepath+=~/.config/nvim/after runtimepath+=~/.config/nvim/lua runtimepath+=~/.config/nvim/plugin
let &packpath = &runtimepath

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Language settings
let $LANG='en'
set langmenu=en

" Runtime settings
source $VIMRUNTIME/delmenu.vim

" Source all part of vimrc
for f in split(glob("~/.config/nvim/vrcs/*.vim"), '\n')
  exe 'source' f
endfor
