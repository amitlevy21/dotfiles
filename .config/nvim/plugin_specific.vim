" vim-airline - statusbar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 0                             " Don't show spell in statusbar
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.config/tmux/tmux-status.conf"
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_skip_empty_sections = 1

" This is for tmuxline actually, the default color for section b does not look
" good for the current window shown in tmuxline
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
  if g:airline_theme == 'base16'
    let a:palette.normal.airline_b[0] = a:palette.normal.airline_a[0]
    let a:palette.normal.airline_b[1] = a:palette.normal.airline_a[1]
  endif
endfunction

" Tmuxline
let g:tmuxline_preset = {
      \'a'       : '#S',
      \'cwin'    : ['#I', '#W'],
      \'win'     : ['#I', '#W'],
      \'options' : {'status-justify' : 'left'}}

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

" Vimux
let g:VimuxOrientation = "h"                               " Split to side pane
let g:VimuxHeight = "40"

" Gitgutter
let g:gitgutter_map_keys = 0                               " Disable plug bindings, which also use <leader>h prefix that slows other bindings

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
    tnoremap <buffer> <silent> <Esc> <C-\><C-n><CR>:bw!<CR>
endfunction

" Open FZF in floating window
let g:fzf_layout = { 'window': 'call FloatWin()' }

" Defx
autocmd FileType defx call s:defx_settings()
call defx#custom#option('_', {
    \ 'winwidth': 45,
    \ 'columns': 'mark:indent:icon:icons:filename:git',
    \ 'split': 'vertical',
    \ 'toggle': 1,
    \ 'resume': 1,
    \ })
function! s:defx_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', ['drop', 'quit'])
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', ['drop', 'quit'])
  nnoremap <silent><buffer><expr> E
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', [['drop', 'vsplit'], 'quit'])
  nnoremap <silent><buffer><expr> P
  \ defx#is_directory() ?
  \ defx#do_action('open') :
  \ defx#do_action('multi', [['drop', 'split'], 'quit'])
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:git:indent:icons:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
  nnoremap <silent><buffer> <Esc> :xit<CR>
endfunction

" Ranger
let g:ranger_map_keys = 0
let g:bclose_no_plugin_maps = 1
let g:ranger_replace_netrw = 1 " Open ranger when opening a dir with vim
