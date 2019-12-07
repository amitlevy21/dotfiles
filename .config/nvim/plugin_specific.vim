" Coc
source $HOME/.config/nvim/coc.vim

" vim-airline - statusbar
let g:airline_theme = 'powerlineish'

" Auto detect i3 config without chaning it's file extension
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" NerdTree
" Show hidden files
let NERDTreeShowHidden=1

" Auto-save-vim
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

