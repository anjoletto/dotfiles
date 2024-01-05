#!/usr/bin/env sh

echo "installing tmux and fuse..."j
sudo apt update
sudo apt install -y tmux fuse

echo "install neovim..."j
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim

echo "linking confgiuration files..."
cp tmux.conf ~/.tmux.conf