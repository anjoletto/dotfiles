 -- from packer github repo
 local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- appearence
  use 'arcticicestudio/nord-vim'
  use 'itchyny/lightline.vim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- LSP stuff
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
	
  -- helpers
  use 'windwp/nvim-autopairs'
  use 'machakann/vim-sandwich'
  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/gitsigns.nvim'

  -- navigation
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- databases
  -- use 'jrop/mongo.nvim'
 
  if packer_bootstrap then
    require('packer').sync()
  end

end
)
