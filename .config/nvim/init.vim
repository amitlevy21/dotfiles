source $HOME/.config/nvim/plugins.vim

if exists('g:vscode')
  source $HOME/.config/nvim/vscode.vim
else
  source $HOME/.config/nvim/plugin_specific.vim
endif

source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keys.vim

