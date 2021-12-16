"---------------------------------------------------------------------------- "
"  Reload configuration file on save
" ---------------------------------------------------------------------------- "
au! BufWritePost $MYVIMRC source %      
" ---------------------------------------------------------------------------- "

" ---------------------------------------------------------------------------- "
" load configuration files for specific configuration
" ---------------------------------------------------------------------------- "
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/nord-theme.vim
source $HOME/.config/nvim/lightline.vim
source $HOME/.config/nvim/markdown-preview.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keymappings.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/cmp.vim
source $HOME/.config/nvim/indents.vim
source $HOME/.config/nvim/gitsigns.vim
source $HOME/.config/nvim/floaterm.vim
" ---------------------------------------------------------------------------- "
