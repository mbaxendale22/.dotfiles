-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'folke/tokyonight.nvim'

  -- built in nvim lsp set up
  use 'neovim/nvim-lspconfig'

  -- autocomplete plugins
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'

  -- expansions for auto complete
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- fuzzy finder and grep, requires plugins, use checkhealth telescope to check install
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run  = 'make' }
  use {
       'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
   }
  use { 'ibhagwan/fzf-lua',
  -- optional for icon support
   requires = { 'kyazdani42/nvim-web-devicons' }
  }

-- upgraded info bar at the bottom
  use {
   'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- put marks in the sidebar
  use 'kshenoy/vim-signature'
  end)
