#!/bin/sh


export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/google-chrome-stable
export TERMINAL=/usr/bin/alacritty
export FILE=/usr/bin/pcmanfm

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

mkdir -p "$XDG_CACHE_HOME"/less
mkdir -p "$XDG_CONFIG_HOME"/less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$XDG_CONFIG_HOME/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

