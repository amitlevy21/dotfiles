" Coc
source $HOME/.config/nvim/coc.vim

" vim-airline - statusbar
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 0                             " Don't show spell in statusbar
let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.config/.tmux-status.conf"

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

" NerdTree
" Show hidden files
let NERDTreeShowHidden=1
" Hide files by pattern
let NERDTreeIgnore=['\.pyc$', '__pycache__']

" Auto-save-vim
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

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

" Vimux
let g:VimuxOrientation = "h"                               " Split to side pane
let g:VimuxHeight = "40"

" Gitgutter
let g:gitgutter_map_keys = 0                               " Disable plug bindings, which also use <leader>h prefix that slows other bindings

