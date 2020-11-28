" vim-airline - statusbar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 0                             " Don't show spell in statusbar
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_skip_empty_sections = 1

" Auto detect i3 config without chaning it's file extension
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Startify
let g:startify_change_to_dir = 0                           " Do not cd to file dir
let g:startify_change_to_vcs_root = 1                      " cd to the root of a vcs project
let g:startify_skiplist = [
    \ 'COMMIT_EDITMSG',
    \ ]
let g:startify_fortune_use_unicode = 1
let g:startify_custom_header = []
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
let g:startify_session_number = 5
let g:startify_custom_header = [
      \ ' _    ___',
      \ '| |  / (_)___ ___ ',
      \ '| | / / / __ `__ \',
      \ '| |/ / / / / / / /',
      \ '|___/_/_/ /_/ /_/ ',
      \ ]

" Gitgutter
let g:gitgutter_map_keys = 0                               " Disable plug bindings, which also use <leader>h prefix that slows other bindings

" NERDTree
let NERDTreeShowHidden=1

" FZF
" Show prompt more naturally
let $FZF_DEFAULT_OPTS = '--layout=reverse'

function! FloatWin()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "┌" . repeat("─", width - 2) . "┐"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "└" . repeat("─", width - 2) . "┘"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

function! FloatTerm(...)
    call FloatWin()
    if a:0 == 0
        call termopen("zsh")
    else
        call termopen(a:1)
    endif
    startinsert
    " Close with ESC
    tnoremap <buffer> <silent> <Esc> <C-\><C-n><CR>:bw!<CR>:q<CR>
endfunction

" Open FZF in floating window
let g:fzf_layout = { 'window': 'call FloatWin()' }

" Prevent FZF to open in NERDTree buffer
au BufEnter * if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif

" Ranger
let g:ranger_map_keys = 0
let g:bclose_no_plugin_maps = 1
let g:ranger_replace_netrw = 1 " Open ranger when opening a dir with vim

" Deoplete
let g:deoplete#enable_at_startup = 1
" Choose completion from menu, or jump snippet completion with tab
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" Needed to expand snippets
imap <expr><CR> neosnippet#expandable() ?
\ "\<Plug>(neosnippet_expand)" : "\<CR>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Close preview after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
