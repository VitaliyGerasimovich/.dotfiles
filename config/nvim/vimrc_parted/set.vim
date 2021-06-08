" Part of vimrc (set/let variables)
" vim: set foldmethod=marker

" -------------------------------------------------------------------------------
" Folding {{{
set foldlevelstart=1
" }}}
" -------------------------------------------------------------------------------
" Encoding {{{
set encoding=utf-8
" }}}
" -------------------------------------------------------------------------------
" Standard {{{

set history=5000 " History size

set showcmd " Show partial command                         
set showmode! " Show current mode

set relativenumber
set number

set timeoutlen=300 " Time to complete sequence
set lazyredraw " Draw after all commands complete

set breakindent

set smartcase
set ignorecase

set wrap
set title
set ruler

set hidden

set nobackup
set nowritebackup
set noswapfile

"}}}
" -------------------------------------------------------------------------------
" Listchars {{{
set nolist                              " Show whitespaces
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅                   " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                      " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)
set nojoinspaces                      " don't autoinsert two spaces after '.', '?', '!' for join command

set backspace=indent,start,eol
" }}}
" -------------------------------------------------------------------------------
" Shortmess {{{
set shiftround                        " always indent by multiple of shiftwidth
set shortmess+=A                      " ignore annoying swapfile messages
set shortmess+=I                      " no splash screen
set shortmess+=O                      " file-read message overwrites previous
set shortmess+=T                      " truncate non-file messages in middle
set shortmess+=W                      " don't echo "[w]"/"[written]" when writing
set shortmess+=a                      " use abbreviations in messages eg. `[RO]` instead of `[readonly]`
set shortmess+=o                      " overwrite file-written messages
set shortmess+=t                      " truncate file messages at start
" }}}
" -------------------------------------------------------------------------------
" Tab / indent {{{
set smarttab                          " <tab>/<BS> indent/dedent in leading whitespace
set expandtab
set tabstop=2
set shiftwidth=2                      " spaces per tab (when shifting)
set autoindent
set smartindent

"}}}
" -------------------------------------------------------------------------------
" Wildmenu {{{
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
" -------------------------------------------------------------------------------
" Syntax {{{
syntax enable
filetype plugin indent on
" }}}
" -------------------------------------------------------------------------------
" Lib / shell {{{
set shell=/bin/zsh

set path+=**
set complete+=i
" }}}
" -------------------------------------------------------------------------------
" Theme {{{
set termguicolors
set background=dark
colorscheme space_vim_theme
" }}}
" -------------------------------------------------------------------------------
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

" }}}
" -------------------------------------------------------------------------------
" Netrw {{{
let g:netrw_banner = 0
let g:netrw_liststyle = 2
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

" }}}
" -------------------------------------------------------------------------------
