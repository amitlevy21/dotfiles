
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

nnoremap <leader>0 :call Cycle_numbering()<CR>

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

" Terminal
nnoremap <leader>t :call FloatTerm()<CR>
nnoremap <leader>lg :call FloatTerm("lazygit")<CR>

" Allow navigation in terminal mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Plugins

" Fzf
nmap <leader>f :Files<cr>
nmap <leader>c :Commands<CR>
nmap <leader>gs :GFiles?<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>H :Helptags<CR>
nmap <leader>bt :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <leader>/ :Rg<Space><CR>
nmap <leader>m :Maps<Space><CR>

" Fugitive
nmap <leader>gb :Gblame<CR>

" Vimux
" Prompt for a command to run
map <leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <leader>vi :VimuxInspectRunner<CR><Paste>
" Zoom the tmux runner pane
map <leader>vz :VimuxZoomRunner<CR>

" Ranger
nnoremap <leader>r :RangerWorkingDirectory<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>

