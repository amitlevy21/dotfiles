
call plug#begin('~/.local/share/nvim/plugged')
Plug 'machakann/vim-highlightedyank'
" Auto complete
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
" Lint
Plug 'w0rp/ale'
" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Test runner
Plug 'janko-m/vim-test'
" Fuzzy finder
Plug 'junegunn/fzf'
" Coloscheme
Plug 'rakr/vim-one'
" Icons
Plug 'ryanoasis/vim-devicons'
" File browser
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Language specific
" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" i3
Plug 'mboughaba/i3config.vim'
call plug#end()
