-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  
  use({ 'rose-pine/neovim', as = 'rose-pine',
  config = function()
	  vim.cmd('colorscheme rose-pine')
  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('tpope/vim-fugitive')

  use { 'neovim/nvim-lspconfig' }
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  --[[
     [use ({
     [        'nvimdev/lspsaga.nvim',
     [        config = function()
     [                require('lspsaga').setup({})
     [        end,
     [})
     ]]
  use 'preservim/nerdcommenter'
  use 'm4xshen/autoclose.nvim'
  use ('prettier/vim-prettier', { run = 'yarn install --frozen-lockfile --production' })
  use({
	  "Pocco81/auto-save.nvim",
	  config = function()
		  require("auto-save").setup {
			  -- your config goes here
			  -- or just leave it empty :)
		  }
	  end,
  })
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

end)
