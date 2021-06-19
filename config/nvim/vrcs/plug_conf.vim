" Part of vimrc (Plugins configuration file)
" vim: set foldmethod=marker
" -----------------------------------------------------------------------------
" EasyMotion {{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f)
" }}}
" -----------------------------------------------------------------------------
" Multiple-lines {{{
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" }}}
" -----------------------------------------------------------------------------
" autopairs {{{
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<A-b>'
let g:AutoPairsShortcutJump = '<A-m>'
" }}}
" -----------------------------------------------------------------------------
" airline {{{
let g:airline_theme='transparent'
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" }}}
" -----------------------------------------------------------------------------
" vimwiki {{{
let g:vimwiki_list = [{'path':'~/.vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vivwiki_ext2syntax = {'.md': 'markdownn', '.markdown': 'markdown', '.mdown': 'markdown'}
" }}}
" -----------------------------------------------------------------------------
" markdown {{{
let g:vimwiki_markdown_link_ext = 1
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1
" }}}
" -----------------------------------------------------------------------------
" FZF {{{
nnoremap <Leader>g :GFiles<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>c :Commits<cr>
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>m :Marks<cr>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>f :Files<CR>

" Mapping selecting mappings
nmap <Leader>; <plug>(fzf-maps-n)
xmap <Leader>; <plug>(fzf-maps-x)
omap <Leader>; <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-w> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
nmap <Leader>s :Snippets<cr>
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_colors =
  \ { 'fg':    ['fg', 'Special'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Ignore'],
  \ 'border':  ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

function! s:fzf_statusline()
" Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:fzf_buffers_jump = 0
let g:fzf_layout = { 'up': '33%' }
let g:fzf_preview_window = ['right:66%:hidden', 'ctrl-/']
" }}}
" -----------------------------------------------------------------------------
" vim-easy-align {{{
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '\': { 'pattern': '\\' },
\ '/': { 'pattern': '//\+\|/\*\|\*/', 'delimiter_align': 'l', 'ignore_groups': ['!Comment'] },
\ ']': {
\     'pattern':       '\]\zs',
\     'left_margin':   0,
\     'right_margin':  1,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       ')\zs',
\     'left_margin':   0,
\     'right_margin':  1,
\     'stick_to_left': 0
\   },
\ 'f': {
\     'pattern': ' \(\S\+(\)\@=',
\     'left_margin': 0,
\     'right_margin': 0
\   },
\ 'd': {
\     'pattern': ' \ze\S\+\s*[;=]',
\     'left_margin': 0,
\     'right_margin': 0
\   }
\ }

" " Start interactive EasyAlign in visual mode
" xmap ga <Plug>(EasyAlign)

" " Start interactive EasyAlign with a Vim movement
" nmap ga <Plug>(EasyAlign)
" nmap gaa ga_

" xmap <Leader>ga <Plug>(LiveEasyAlign)

" vmap <Enter> <Plug>(EasyAlign)
" }}}
" -----------------------------------------------------------------------------
" Vim-floaterm {{{

" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan

let g:floaterm_wintype = 'vsplit'
let g:floaterm_width = 0.5
let g:floaterm_position = 'right'
let g:floaterm_autoclose = 1
let g:floaterm_wintitle = 0

let g:floaterm_keymap_new    = '<Leader>tn'
let g:floaterm_keymap_prev   = '<Leader>th'
let g:floaterm_keymap_next   = '<Leader>tl'
let g:floaterm_keymap_toggle = '<Leader>ti'
let g:floaterm_keymap_kill   = '<Leader>tk'

" }}}
" -----------------------------------------------------------------------------
" Ultisnipts {{{

let g:UltiSnipsExpandTrigger="<A-o>"
let g:UltiSnipsJumpForwardTrigger="<A-l>"
let g:UltiSnipsJumpBackwardTrigger="<A-h>"
let g:UltiSnipsEditSplit="tabdo"
let g:UltiSnipsSnippetsDir=["~/.config/UltiSnips"]
  
" }}}
" -----------------------------------------------------------------------------
" {{{ nnn
" Opens the n³ window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }
" }}}
" -----------------------------------------------------------------------------
" {{{ Slime
let g:slime_target = "neovim"
" let g:slime_target = "tmux"
let g:slime_no_mappings = 1
xmap <leader>q <Plug>SlimeRegionSend
nmap <leader>q <Plug>SlimeMotionSend
nmap <leader>qq <Plug>SlimeLineSend
" }}}
" -----------------------------------------------------------------------------
"  {{{ LSP 
lua << EOF
require'lspconfig'.pyright.setup{}
EOF
"  }}}
" -----------------------------------------------------------------------------
