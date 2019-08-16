" gitgutter
set updatetime=100

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '${HOME}/go/bin/gocode'
let g:neosnippet#enable_complete_snippet = 1

" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                        \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

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

" Ale
" Show errors in quickfix list
let g:ale_set_quickfix = 1
