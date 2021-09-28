call plug#begin('~/.config/nvim/plugins')

    Plug 'arcticicestudio/nord-vim' " nord theme for vim/neovim
    Plug 'sheerun/vim-polyglot' " syntax support
    Plug 'jiangmiao/auto-pairs' " pairs of (), [], {}, etc
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " completion
    Plug 'Yggdroot/indentLine' " mark indentation
    Plug 'itchyny/lightline.vim' " simple status line
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/fzf.vim'
    Plug 'metakirby5/codi.vim'

call plug#end()

