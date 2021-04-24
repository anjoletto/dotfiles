"---------------------------------------------------------------------------- "
"  Reload configuration file on save
" ---------------------------------------------------------------------------- "
au! BufWritePost $MYVIMRC source %      
" ---------------------------------------------------------------------------- "

" ---------------------------------------------------------------------------- "
" load configuration files for specific configuration
" ---------------------------------------------------------------------------- "
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keymappings.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/nord-theme.vim
"source $HOME/.config/nvim/lightline.vim
" ---------------------------------------------------------------------------- "
