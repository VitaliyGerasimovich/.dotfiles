" Howki vimrc
" vim: set foldmethod=marker

set runtimepath^=~/.config/nvim/ runtimepath+=~/.config/nvim/after runtimepath+=~/.config/nvim/lua
let &packpath = &runtimepath
let $VIMRC_PART='~/.config/nvim/vimrc_parted'

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" -----------------------------------------------------------------------------
" => VIM user interface
" -----------------------------------------------------------------------------

let $LANG='en'
set langmenu=en

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

for f in split(glob("~/.config/nvim/vimrc_parted/*.vim"), '\n')
  exe 'source' f
endfor
