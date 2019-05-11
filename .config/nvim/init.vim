
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

" Update faster for gitgutter
set updatetime=100

" Use deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '${HOME}/go/bin/gocode'

" Do not load powerline by default
let g:powerline_loaded = 1

" Statusbar
let g:airline_theme = 'angr'
" Integrate with ale
let g:airline#extensions#ale#enabled = 1

" Editor
" GUI
colorscheme one
set number relativenumber
set foldmethod=syntax
set termguicolors

" Editing
set autowrite

" Key bindings
let mapleader = "'"
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <leader>f :FZF<cr>

" Terminal shortcuts
tnoremap <Esc> <C-\><C-n>

" Language specific
" Golang
" More syntax highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Mark variable selected in all occurrences
let g:go_auto_sameids = 1

" Show variable type in status bar
let g:go_auto_type_info = 1

" Get file structure
au FileType go nmap <leader>gs :GoDeclsDir<cr>
