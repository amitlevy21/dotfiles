" gitgutter
set updatetime=100

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '${HOME}/go/bin/gocode'

" vim-airline - statusbar
let g:airline_theme = 'angr'
" Integrate with ale
let g:airline#extensions#ale#enabled = 1

" Auto detect i3 config without chaning it's file extension
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" NerdTree
" Show hidden files
let NERDTreeShowHidden=1
