
let mapleader = " "

" Copy to system clipboard
noremap <leader>y "+y
noremap <leader>p "+p

" Move VISUAL LINE selection within buffer.
xnoremap <silent> K :call mappings#visual#move_up()<CR>
xnoremap <silent> J :call mappings#visual#move_down()<CR>

" Cycle between number line modes
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relativenumber numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

nnoremap <leader>r :call Cycle_numbering()<CR>

" Accidental Q when exiting should exit
nmap Q q

" D is for deleting line from cursor position to end of line as of C, so Y
" should consist
noremap Y y$

" Go to previous buffer
nnoremap <leader><leader> <C-^>

nnoremap J :bp<CR>
nnoremap K :bn<CR>


nnoremap <leader>q :quit<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>x :xit<CR>

nnoremap <leader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

" Terminal
nnoremap <leader>, :split term://zsh<CR>

" Plugins

" Coc
source $HOME/.config/nvim/coc.vim

" Fzf
nmap <leader>f :FZF<cr>
nmap <leader>c :Commands<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>H :Helptags<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <Leader>/ :Rg<Space>

" Fugitive
nmap <leader>gb :Gblame<CR>

" Vimux
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR><Paste>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

