" Do not load powerline by default
let g:powerline_loaded = 1

" Python paths
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Editor
if !exists('g:vscode')
  colorscheme base16-solarflare
endif
set number relativenumber             " Hybrid relative line numbers
set foldmethod=syntax                 " Fold by language syntax
set nofoldenable                      " Don't automatically fold all on file open
set termguicolors                     " Enable true term colors
set scrolloff=3                       " Start scrolling 3 lines before edge of viewport
set updatetime=100                    " Faster refresh rate for plugins
set spell                             " Spell checking
set cursorline                        " Highlight current line
set iskeyword-=_                      " Don't treat words separated by _ as a single word
set tabstop=4                         " Set tab size
set mouse=n                           " Easy resize for splits
set expandtab                         " Replace tabs with spaces
set shiftwidth=2                      " Size of indent for new lines
set showbreak=↪                       " Line break icon
set list                              " Show whitespaces
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷\                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)
set fillchars=vert:┃                  " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)

" Disable theme for vertical split line, without it fillchars=vert wont work
highlight VertSplit ctermbg=NONE guibg=NONE

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
set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" Terminal
" Hide line numbers
au TermOpen * setlocal nonumber norelativenumber

