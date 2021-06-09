" Part of vimrc (list of plugins)
" vim: set foldmethod=marker

call plug#begin('~/.config/nvim/plugged')

" surround
Plug 'tpope/vim-surround'
" comments
Plug 'tpope/vim-commentary'
" git commands
Plug 'tpope/vim-fugitive'
" advanced search
Plug 'tpope/vim-abolish'
" repeater
Plug 'tpope/vim-repeat'
" some commands
Plug 'tpope/vim-eunuch'

" align
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'jiangmiao/auto-pairs'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nnn
Plug 'mcchrish/nnn.vim'

" easymotion
Plug 'easymotion/vim-easymotion'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vimwiki
Plug 'vimwiki/vimwiki'

" takswiki
Plug 'tools-life/taskwiki'

" add Color to task
Plug 'powerman/vim-plugin-AnsiEsc'

" markdown
Plug 'plasticboy/vim-markdown'

" floatterm
Plug 'voldikss/vim-floaterm'

" startify
Plug 'mhinz/vim-startify'

" multi-lines
Plug 'terryma/vim-multiple-cursors'

Plug 'altercation/vim-colors-solarized'
Plug 'liuchengxu/space-vim-theme'
Plug 'lifepillar/vim-colortemplate'

Plug 'chrisbra/Colorizer'

" Completer
Plug 'masawada/completor-dictionary'
Plug 'maralla/completor.vim'

" Initialize plugin system
call plug#end()
