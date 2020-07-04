call plug#begin('~/.local/share/nvim/plugged')
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
" Welcome screen
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-rooter'
" Repeat . for plugins
Plug 'tpope/vim-repeat'
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
" File Manager
Plug 'preservim/nerdtree'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' " needed in ranger
" Colorscheme
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
Plug 'ntk148v/vim-horizon'
" Highlight hex codes with their color
Plug 'norcalli/nvim-colorizer.lua'
" Icons
Plug 'ryanoasis/vim-devicons'
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
" LSP
Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/deoplete-lsp'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Language specific
" Python
Plug 'davidhalter/jedi'
Plug 'deoplete-plugins/deoplete-jedi'
" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'sebdah/vim-delve'
Plug 'godoctor/godoctor.vim'
" i3
Plug 'mboughaba/i3config.vim'
call plug#end()
:lua << END
  require'nvim_lsp'.pyls.setup{}
END
