#!/bin/sh


export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/google-chrome-stable
export TERMINAL=/usr/bin/alacritty
export FILE=/usr/bin/ranger

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

mkdir -p "$XDG_CACHE_HOME"/less
mkdir -p "$XDG_CONFIG_HOME"/less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME"/vagrant/aliases
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$XDG_CONFIG_HOME/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$HOME/.local/bin"

