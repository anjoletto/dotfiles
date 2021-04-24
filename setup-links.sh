#!/usr/bin/env sh

echo "Linking configuration files..."
ln -s $(pwd)/zsh/zshenv $HOME/.zshenv
ln -s $(pwd)/nvim $HOME/.config/nvim
ln -s $(pwd)/tmux.conf $HOME/.config/tmux.conf
