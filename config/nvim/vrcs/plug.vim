" Part of vimrc (list of plugins)
" vim: set foldmethod=marker

call plug#begin('~/.config/nvim/plugged')
" surround
Plug 'tpope/vim-surround'
" comments
Plug 'tpope/vim-commentary'
" git commands
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-github-dashboard'
Plug 'mbbill/undotree'
" repeater
Plug 'tpope/vim-repeat'
" align
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
" nnn
Plug 'mcchrish/nnn.vim'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" vimwiki
Plug 'vimwiki/vimwiki'
" takswiki
Plug 'tools-life/taskwiki'
" markdown
Plug 'plasticboy/vim-markdown'
" startify
Plug 'mhinz/vim-startify'
" multi-lines
Plug 'terryma/vim-multiple-cursors'
" theme
Plug 'liuchengxu/space-vim-theme'
" Slime
Plug 'jpalardy/vim-slime'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Game
Plug 'ThePrimeagen/vim-be-good'
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Initialize plugin system
call plug#end()
