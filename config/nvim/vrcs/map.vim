" Part of vimrc (maps)

" Leader key
let mapleader = " "

" Function
function! NetrwMappings()
  noremap <buffer> <C-l> <C-w>l
endfunction

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END

" Save
inoremap <C-s> <C-o>:update<CR>
nnoremap <Leader>w :w!<CR>

" NORMAL MODE
nnoremap <silent> <A-s> :Vexplore<CR>
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p

nnoremap <Leader>x :%! xxd<CR>
nnoremap <Leader>u :%! xxd -r<CR>

nnoremap <Leader>o o<ESC>k
nnoremap <Leader>O O<ESC>j

nnoremap <silent> <Leader>m :set foldmethod=marker<CR>

nnoremap <Leader><space> :noh<CR>

nnoremap <silent> <Leader>e :exe getline(line('.'))<CR>

nnoremap Q @@

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <silent> <A-q> :close<CR>

" Y like D, C
nnoremap Y y$

" wrapping movement
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap ^ g^
nnoremap $ g$

nnoremap H ^
nnoremap L g_

" Tab manipulation
nnoremap <silent> <C-l> :tabNext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>

" go to place of last change
nnoremap g; g;zz

if bufwinnr(1)
  nnoremap + <C-w>+
  nnoremap - <C-w>-
endif

noremap <A-.> ZZ

" INSERT MODE
inoremap jk <esc>
inoremap jj <esc>
inoremap <A-r> <C-r><C-p>
inoremap <A-.> <C-o>ZZ

" VISUAL MODE

" EX COMMAND MODE
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" FZF
nnoremap \l :Lines<CR>
nnoremap \m :Marks<CR>
nnoremap \h :History<CR>
nnoremap \c :Commits<CR>
nnoremap \s :Snippets<CR>

" onoremap
onoremap <silent> f :<C-U>normal! mzggVG<CR>`z

" Terminal {{{
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

noremap <silent> <A-i> :FloatermToggle<CR>
tnoremap <silent> <A-i> <C-\><C-N>:FloatermToggle<CR>
" }}}
" ------------------------------------------------------------------------------
