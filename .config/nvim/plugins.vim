call plug#begin('~/.local/share/nvim/plugged')

Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
" Repeat . for plugins
Plug 'tpope/vim-repeat'
" Commenter
Plug 'tpope/vim-commentary'
" Test runner
Plug 'janko-m/vim-test'

if !exists('g:vscode')
  " Welcome screen
  Plug 'mhinz/vim-startify'
  Plug 'airblade/vim-rooter'
  " Zen mode
  Plug 'junegunn/goyo.vim'
  " Alternate between files
  Plug 'tpope/vim-projectionist'
  " Snippets
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
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
  " Icons
  Plug 'ryanoasis/vim-devicons'
  " Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'kdheepak/lazygit.nvim'
  " Highlight hex codes with their color
  Plug 'norcalli/nvim-colorizer.lua'
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
endif
call plug#end()

if !exists('g:vscode')
lua << END
  require'nvim_lsp'.pyls.setup{}
END
endif
