" Part of vimrc (maps)

" Leader key
let mapleader = " "

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END

" Save
inoremap <C-s> <C-o>:update<CR>
nnoremap <Leader>w :w!<CR>

" NORMAL MODE
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p

nnoremap <Leader>x :%! xxd<CR>
nnoremap <Leader>u :%! xxd -r<CR>

nnoremap <Leader>o o<ESC>k
nnoremap <Leader>O O<ESC>j

nnoremap <Leader><space> :noh<CR>

nnoremap <silent> <Leader>e :exe getline(line('.'))<CR>

nnoremap Q @@

nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>
nnoremap <silent> <C-q> :copen<CR>

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

nnoremap + <C-w>+
nnoremap - <C-w>-

noremap <A-.> ZZ

" INSERT MODE
inoremap <A-r> <C-r><C-p>
inoremap <A-.> <C-o>ZZ

inoremap <A-h> <C-o><C-w>h
inoremap <A-j> <C-o><C-w>j
inoremap <A-k> <C-o><C-w>k
inoremap <A-l> <C-o><C-w>l

" VISUAL MODE

" EX COMMAND MODE
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" onoremap
onoremap <silent> e :<C-U>silent! normal! ggVG<CR>

" Terminal
tnoremap <A-i> <C-\><C-N>

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <C-w> <C-\><C-N><C-w>
