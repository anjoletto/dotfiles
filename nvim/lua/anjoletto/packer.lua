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

  ------------------------------------------------------------------------------
  -- packer will install packer
  ------------------------------------------------------------------------------
  use 'wbthomason/packer.nvim'
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- appearance
  ------------------------------------------------------------------------------
  use "arcticicestudio/nord-vim"
  use "nvim-lualine/lualine.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- utils
  ------------------------------------------------------------------------------
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use "nvim-treesitter/nvim-treesitter-context"
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use "windwp/nvim-autopairs"
  use {"junegunn/fzf", run = "fzf#install()"}
  use "junegunn/fzf.vim"
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- LSP
  ------------------------------------------------------------------------------
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use "github/copilot.vim"
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- go
  -- use "fatih/vim-go"
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- databases
  -- use "tpope/vim-dadbod"
  -- use "kristijanhusak/vim-dadbod-ui"
  -- use "kristijanhusak/vim-dadbod-completion"
  ------------------------------------------------------------------------------

  if packer_bootstrap then
    require('packer').sync()
  end
end)
