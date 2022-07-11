#!/usr/bin/env sh

SPATH=$(dirname "$0")

echo "Linking configuration files..."
ln -s $SPATH/zsh/zshenv $HOME/.zshenv
ln -s $SPATH/nvim $HOME/.config/nvim
ln -s $SPATH/tmux.conf $HOME/.config/tmux.conf
