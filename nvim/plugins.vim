call plug#begin('~/.config/nvim/plugins')

  " appearence
  Plug 'arcticicestudio/nord-vim' " nord theme for vim/neovim
  Plug 'itchyny/lightline.vim' " simple status line
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'

  " LSP stuff
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  " helpers
  Plug 'jiangmiao/auto-pairs' " pairs of (), [], {}, etc
  Plug 'machakann/vim-sandwich'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'

  " functionality
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'vimwiki/vimwiki'
  Plug 'metakirby5/codi.vim'
  Plug 'voldikss/vim-floaterm'

  " navigation
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

call plug#end()