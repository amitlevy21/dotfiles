
let mapleader = "'"
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <leader>f :FZF<cr>

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
noremap <leader>Y "*y
noremap <leader>P "*p
noremap <leader>y "+y
noremap <leader>p "+p

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

