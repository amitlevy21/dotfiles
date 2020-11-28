
let mapleader = " "

" Copy to system clipboard
noremap <leader>y "+y
noremap <leader>p "+p

" Move VISUAL LINE selection within buffer.
xnoremap <silent> K :call mappings#visual#move_up()<CR>
xnoremap <silent> J :call mappings#visual#move_down()<CR>

" D is for deleting line from cursor position to end of line as of C, so Y
" should consist
noremap Y y$

" Go to previous buffer
nnoremap <leader><leader> <C-^>

nnoremap J :bp<CR>
nnoremap K :bn<CR>

nmap j gj
nmap k gk

nnoremap <leader>q :quit<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>x :xit<CR>

" Terminal
nnoremap <leader>t :call FloatTerm()<CR>
nnoremap <leader>lg :LazyGit<CR>

" Normal mode with escape
tnoremap <leader><Esc> <C-\><C-n>
" Start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nnoremap <leader>, :call OpenTerminal()<CR>

" Allow navigation in terminal mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Plugins

" Fzf
nmap <leader>f :Files<cr>
nmap <leader>c :Commands<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>H :Helptags<CR>
nmap <leader>bt :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <leader>/ :Rg<Space><CR>
nmap <leader>m :Maps<Space><CR>

" Fugitive
nmap <leader>gb :Gblame<CR>

" Ranger
nnoremap <leader>r :RangerWorkingDirectory<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>

