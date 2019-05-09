
call plug#begin('~/.local/share/nvim/plugged')
Plug 'machakann/vim-highlightedyank'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'janko-m/vim-test'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

" update faster for gitgutter
set updatetime=100

let g:deoplete#enable_at_startup = 1

" Do not load powerline by default
let g:powerline_loaded = 1

" Statusbar
let g:airline_theme = 'angr'

" Editor GUI
colorscheme one
set number relativenumber
set foldmethod=syntax
set termguicolors

" Key bindings
let mapleader = "'"
nnoremap <leader>f :NERDTreeToggle<cr>

" Terminal shortcuts
tnoremap <Esc> <C-\><C-n>


