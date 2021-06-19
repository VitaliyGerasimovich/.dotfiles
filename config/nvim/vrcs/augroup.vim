" Part of vimrc (au)
" vim: set foldmethod=marker

augroup line_return
  au!
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

augroup filetypedetect
  au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

augroup every
  autocmd!
  au InsertEnter * set norelativenumber
  au InsertLeave * set relativenumber
  au BufEnter * set foldmethod=syntax
  au FileChangedRO * set readonly!
augroup END

augroup terminal
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup EN 

autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/dict/'.&filetype.'.dict')

autocmd BufNewFile,BufRead *.py set keywordprg=pydoc3
