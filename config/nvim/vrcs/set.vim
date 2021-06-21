" Part of vimrc (set/let variables)
" vim: set foldmethod=marker
" -----------------------------------------------------------------------------
" Folding {{{
set foldlevelstart=1
" }}}
" -----------------------------------------------------------------------------
" Encoding {{{
set encoding=utf-8
" }}}
" -----------------------------------------------------------------------------
" Standard {{{
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
set history=5000 " History size
set showcmd " Show partial command                         
set showmode! " Show current mode
" Line numbers
set relativenumber
set number
" Time to complete sequence
set timeoutlen=200
" Draw after all commands complete
set lazyredraw
" Text width
set textwidth=79
" Restrict 80 characters
set colorcolumn=80
" Same number spaces
set breakindent
" Smart search (SS => SS; ss => Ss, sS, ss; Ss => Ss; sS => sS)
set smartcase
set ignorecase
" Wrap to textwidth
set wrap
" Show line / column
set ruler
" Allow hide modified buffer
set hidden
" No backup
set nobackup
set nowritebackup
set noswapfile
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
"}}}
" -----------------------------------------------------------------------------
" Listchars {{{
set nolist
set listchars=nbsp:⦸
set listchars+=tab:▷┅
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•
set nojoinspaces
set backspace=indent,start,eol
" }}}
" -----------------------------------------------------------------------------
" Shortmess {{{
set shiftround                        " always indent by multiple of shiftwidth
set shortmess+=A                      " ignore annoying swapfile messages
set shortmess+=I                      " no splash screen
set shortmess+=O                      " file-read message overwrites previous
set shortmess+=T                      " truncate non-file messages in middle
set shortmess+=W                      " don't echo "[w]"/"[written]" when writing
set shortmess+=a                      " `[RO]` instead of `[readonly]`
set shortmess+=o                      " overwrite file-written messages
set shortmess+=t                      " truncate file messages at start
set shortmess+=c
" }}}
" -----------------------------------------------------------------------------
" Tab / indent {{{
set smarttab                          " <tab>/<BS> indent/dedent in leading whitespace
set expandtab
set tabstop=2
set shiftwidth=2                      " spaces per tab (when shifting)
set autoindent
set smartindent
"}}}
" -----------------------------------------------------------------------------
" Wildmenu {{{
set cmdheight=1
set wildmenu
set wildmode=longest:full,full        " shell-like autocomplete to unambiguous portion
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig,*.rej "Merge resolution files"
" }}}
" -----------------------------------------------------------------------------
" Syntax {{{
syntax enable
filetype plugin indent on
" }}}
" -----------------------------------------------------------------------------
" Lib / shell {{{
set shell=/bin/zsh
set path+=**
set complete+=i
set completeopt+=noinsert
" }}}
" -----------------------------------------------------------------------------
" Theme {{{
set termguicolors
set background=dark
colorscheme space_vim_theme
" }}}
" -----------------------------------------------------------------------------
" Another {{{
set mouse=a
set updatetime=10000
set autoread
set nospell
set exrc
set sidescrolloff=5
set scrolloff=5
set undofile
set undodir=/tmp
hi Search guibg=peur guifg=wheat
" }}}
" -----------------------------------------------------------------------------
