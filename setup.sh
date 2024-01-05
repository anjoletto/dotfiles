#!/usr/bin/env sh

sudo apt update
sudo apt install -y tmux fuse

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim