" Do not load powerline by default
let g:powerline_loaded = 1

" Editor
" GUI
colorscheme base16-solarflare
set number relativenumber
set foldmethod=syntax
set termguicolors

" Line break icon
set showbreak=↪

" Reload file in case is changed from outside
set autoread
au FocusGained * :checktime

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
augroup END
