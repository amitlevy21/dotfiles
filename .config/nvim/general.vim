" Do not load powerline by default
let g:powerline_loaded = 1

" Editor
" GUI
colorscheme base16-solarflare
set number relativenumber
set foldmethod=syntax
set nofoldenable
set termguicolors
set scrolloff=3                       " start scrolling 3 lines before edge of viewport

" Line break icon
set showbreak=↪

set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷┅                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)
" Reload file in case is changed from outside
set autoread

au FocusGained * :checktime

" Auto save
set autowrite

" Natural split
set splitbelow
set splitright

" Look in other tabs if file already open
set switchbuf=usetab
" Case insensitive search when in command mode
" assumes set ignorecase smartcase
set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

