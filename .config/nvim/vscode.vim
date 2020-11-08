xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Workaround for folds
 nnoremap gk :<C-u>call VSCodeCall('cursorMove', { 'to': 'up', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR>
 nnoremap gj :<C-u>call VSCodeCall('cursorMove', { 'to': 'down', 'by': 'wrappedLine', 'value': v:count ? v:count : 1 })<CR>
