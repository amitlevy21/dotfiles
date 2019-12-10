
let mapleader = " "

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

xnoremap <C-J> <C-W><C-J>
xnoremap <C-K> <C-W><C-K>
xnoremap <C-L> <C-W><C-L>
xnoremap <C-H> <C-W><C-H>

" Copy to system clipboard
noremap <leader>y "+y
noremap <leader>p "+p

" Move VISUAL LINE selection within buffer.
xnoremap <silent> K :call mappings#visual#move_up()<CR>
xnoremap <silent> J :call mappings#visual#move_down()<CR>

" Cycle between number line modes
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relativenumber numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

nnoremap <leader>r :call Cycle_numbering()<CR>

" Accidental Q when exiting should exit
nmap Q q

" D is for deleting line from cursor position to end of line as of C, so Y
" should consist
noremap Y y$

" Go to previous buffer
nnoremap <leader><leader> <C-^>

nnoremap <leader>q :quit<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>x :xit<CR>

nnoremap <leader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

" Terminal
nnoremap <leader>, :vsplit term://zsh<CR>
tnoremap <Esc> <C-\><C-n>


" Plugins

" NerdTree
nnoremap <leader>n :NERDTreeToggle<cr>

" Coc
source $HOME/.config/nvim/coc.vim

" Fzf
nmap <leader>f :FZF<cr>
nmap <leader>c :Commands<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <Leader>/ :Rg<Space>


" Fugitive
nmap <leader>gb :Gblame<CR>

