
call plug#begin('~/.local/share/nvim/plugged')
Plug 'machakann/vim-highlightedyank'
" Welcome screen
Plug 'mhinz/vim-startify'
" Auto save
Plug '907th/vim-auto-save'
"Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Commenter
Plug 'tpope/vim-commentary'
" Zen mode
Plug 'junegunn/goyo.vim'
" Alternate between files
Plug 'tpope/vim-projectionist'
" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Test runner
Plug 'janko-m/vim-test'
" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Coloscheme
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
" Icons
Plug 'ryanoasis/vim-devicons'
" File browser
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'benmills/vimux'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Language specific
" Python better syntax highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'sebdah/vim-delve'
Plug 'godoctor/godoctor.vim'
" i3
Plug 'mboughaba/i3config.vim'
call plug#end()
