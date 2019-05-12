
" More syntax highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Mark variable selected in all occurrences
let g:go_auto_sameids = 1

" Show variable type in status bar
let g:go_auto_type_info = 1

" Get file structure
au FileType go nmap <leader>gs :GoDeclsDir<cr>
