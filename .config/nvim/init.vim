

call plug#begin('~/.vim/plugged')
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
call plug#end()


let g:deoplete#enable_at_startup = 1

" Do not load powerline by default
let g:powerline_loaded = 1

set number relativenumber
set foldmethod=syntax
colorscheme one
set termguicolors

" Terminal shortcuts
tnoremap <Esc> <C-\><C-n>


