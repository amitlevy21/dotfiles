" gitgutter
set updatetime=100

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '${HOME}/go/bin/gocode'

" vim-airline - statusbar
let g:airline_theme = 'angr'
" Integrate with ale
let g:airline#extensions#ale#enabled = 1
