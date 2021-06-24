" Part of vimrc (maps)

" Leader key
let mapleader = " "

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Save
inoremap <C-s> <C-o>:update<CR>
nnoremap <Leader>w :w!<CR>

" NORMAL MODE
" copy / paste
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>Y gg"+yG
nnoremap <Leader>d "_d
" hex
nnoremap <Leader>x :%! xxd<CR>
nnoremap <Leader>u :%! xxd -r<CR>
" clear highlight
nnoremap <Leader><space> :noh<CR>
" execute current line
nnoremap <silent> <Leader>e :exe getline(line('.'))<CR>
" repeat last macros
nnoremap Q @@
" quickfix list motion
nnoremap <silent> <C-j> :cnext<CR>
nnoremap <silent> <C-k> :cprev<CR>
nnoremap <silent> <C-q> :copen<CR>
" motions via buffers
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" oO
nnoremap <Leader>o o<C-[>k
nnoremap <Leader>O O<C-[>j
" fast quit
nnoremap <silent> <A-q> :close<CR>
" Y like D, C
nnoremap Y y$
" wrapping movement
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap ^ g^
nnoremap $ g$
" fast motion in line
nnoremap H ^
nnoremap L g_
" Tab manipulation
nnoremap <silent> <C-l> :tabNext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>
" go to place of last change
nnoremap g; g;zz
" resize buffers
nnoremap + <C-w>+
nnoremap - <C-w>-
" quit and save file
noremap <A-.> ZZ

" INSERT MODE
inoremap <A-r> <C-r><C-p>
inoremap <A-.> <C-o>ZZ

inoremap <A-h> <C-o><C-w>h
inoremap <A-j> <C-o><C-w>j
inoremap <A-k> <C-o><C-w>k
inoremap <A-l> <C-o><C-w>l

" VISUAL MODE
vnoremap <Leader>y "*y

" EX COMMAND MODE
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" O MODE
onoremap <silent> e :<C-U>silent! normal! ggVG<CR>

" Terminal
nnoremap <Leader>ti :terminal<CR>
tnoremap <A-i> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
