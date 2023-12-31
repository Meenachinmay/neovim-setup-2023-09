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
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'nvimdev/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'

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
  use("preservim/nerdtree") 
  use("nvim-tree/nvim-web-devicons")
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

end)
