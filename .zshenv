#!/bin/sh


mkdir -p $HOME/.config/zsh
mkdir -p $XDG_DATA_HOME/zsh
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history

autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

export NNN_PLUG='f:finder;o:fzopen;c:fzcd;t:preview-tabbed;p:preview-tui;v:imgview;i:imgthumb'
export NNN_FIFO=/tmp/nnn.fifo

