" Do not load powerline by default
let g:powerline_loaded = 1

" Editor
" GUI
colorscheme one
set number relativenumber
set foldmethod=syntax
set termguicolors

" Auto save
set autowrite

" Natural split
set splitbelow
set splitright

" Case insensitive search when in command mode
" assumes set ignorecase smartcase
set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END<Paste>
