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

augroup anything

augroup vimrc
  autocmd!
  " Source your vimrc on save
  autocmd! BufWritePost .vimrc source %
  " Apply modeline option after re-openning the vimrc file (that is after sourcing it)
  autocmd! BufWritePost .vimrc set modeline | doautocmd BufRead
  autocmd! BufEnter *.vim set foldmethod=marker
augroup END

augroup terminal
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup EN 

autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/dict/'.&filetype.'.dict')
