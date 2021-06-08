" Part of vimrc (maps)
" vim: set foldmethod=marker

" Leader key
let mapleader = " "

" ------------------------------------------------------------------------------
" Function {{{
function! NetrwMappings()
  noremap <buffer> <C-l> <C-w>l
endfunction

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END
" }}}
" ------------------------------------------------------------------------------
" Save {{{
inoremap <C-s> <C-o>:update<CR>
nnoremap <leader>w :w!<CR>
" }}}
" ------------------------------------------------------------------------------
" NORMAL MODE {{{
nnoremap <silent> <A-s> :Vexplore<CR>
nnoremap <leader>r :source ~/.vimrc<CR>
nnoremap <leader>y "*y
nnoremap <leader>p "*p

nnoremap <leader>x :%! xxd<CR>
nnoremap <leader>u :%! xxd -r<CR>

nnoremap <leader>o o<ESC>k
nnoremap <leader>O O<ESC>j

nnoremap <silent> <leader>m :set foldmethod=marker<CR>

nnoremap <leader><space> :noh<CR>

nnoremap <silent> <Leader>e :exe getline(line('.'))<CR>

nnoremap Q @@

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <silent> <A-q> :close<CR>

nnoremap Y y$

nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap ^ g^
nnoremap $ g$

nnoremap H ^
nnoremap L g_

nnoremap <silent> <C-l> :tabNext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>

" go to place of last change
nnoremap g; g;zz

if bufwinnr(1)
  nnoremap + <C-w>+
  nnoremap - <C-w>-
endif
" }}}
" ------------------------------------------------------------------------------
" INSERT MODE {{{
inoremap jk <esc>
inoremap <A-r> <C-r><C-p>
" }}}
" ------------------------------------------------------------------------------
" VISUAL MODE {{{
" }}}
" ------------------------------------------------------------------------------
" EX COMMAND MODE {{{
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" }}}
" ------------------------------------------------------------------------------
" FZF {{{
nnoremap \l :Lines<CR>
nnoremap \m :Marks<CR>
nnoremap \h :History<CR>
nnoremap \c :Commits<CR>
nnoremap \s :Snippets<CR>
" }}}
" ------------------------------------------------------------------------------
" Terminal {{{
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

noremap <silent> <A-i> :FloatermToggle<CR>
tnoremap <silent> <A-i> <C-\><C-N>:FloatermToggle<CR>
" }}}
" ------------------------------------------------------------------------------
