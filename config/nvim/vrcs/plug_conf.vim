" Part of vimrc (Plugins configuration file)
" vim: set foldmethod=marker
" -----------------------------------------------------------------------------
" airline {{{
let g:airline_theme='raven'
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
" Gitgutter {{{
nnoremap <Leader>gj :diffget //3<CR>
nnoremap <Leader>gf :diffget //2<CR>
nnoremap <Leader>gs :G <CR>
" }}}
" -----------------------------------------------------------------------------
" FZF {{{
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <C-p>       :GFiles<CR>
nnoremap <Leader>fg  :GFiles?<CR>
nnoremap <Leader>fb  :Buffers<CR>
nnoremap <Leader>fc  :Commits<CR>
nnoremap <Leader>ff  :Files<CR>
nnoremap <Leader>gb :GBranches<CR>
nnoremap <Leader>fm  :Marks<CR>
nnoremap <Leader>fl  :Lines<CR>
nnoremap <Leader>fh  :Helptags<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')
inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
    \ 'prefix': '^.*$',
    \ 'source': 'rg -n ^ --color always',
    \ 'options': '--ansi --delimiter : --nth 3..',
    \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

let g:fzf_history_dir = '~/.local/share/fzf-history'

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
" let g:fzf_layout = { 'up': '33%' }
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let g:fzf_preview_window = ['right:66%', 'ctrl-/']
" }}}
" -----------------------------------------------------------------------------
" vim-easy-align {{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
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
xmap <Leader>q  <Plug>SlimeRegionSend
nmap <Leader>q  <Plug>SlimeMotionSend
nmap <Leader>qq <Plug>SlimeLineSend
" }}}
" -----------------------------------------------------------------------------
" github dashboard {{{
let g:github_dashboard = { 'username': 'VitaliyGerasimovich' }
"  }}}
" github dashboard {{{
" -----------------------------------------------------------------------------
nnoremap <Leader>gv :GV<CR>
"  }}}
" -----------------------------------------------------------------------------
" nvim LSP {{{
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.bashls.setup{}

-- Compe setup
require'compe'.setup {
enabled = true;
autocomplete = true;
debug = false;
min_length = 1;
preselect = 'enable';
throttle_time = 80;
source_timeout = 200;
incomplete_delay = 400;
max_abbr_width = 100;
max_kind_width = 100;
max_menu_width = 100;
documentation = true;

source = {
  path = true;
  nvim_lsp = true;
  };
}

local t = function(str)
return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
local col = vim.fn.col('.') - 1
if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
  return true
else
  return false
end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
if vim.fn.pumvisible() == 1 then
  return t "<C-n>"
elseif check_back_space() then
  return t "<Tab>"
else
  return vim.fn['compe#complete']()
end
end
_G.s_tab_complete = function()
if vim.fn.pumvisible() == 1 then
  return t "<C-p>"
else
  return t "<S-Tab>"
end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

EOF
"  }}}
" -----------------------------------------------------------------------------
"  treesitter {{{
nnoremap <Leader>pt :TSPlaygroundToggle<CR>
lua require'nvim-treesitter.configs'.setup { hightlight = { enable = true } }
"  }}}
