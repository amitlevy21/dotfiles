
let mapleader = "'"
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <leader>f :FZF<cr>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Share clipboard between vim instances 
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
noremap <leader>P "+p
