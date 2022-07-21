return require('packer').startup(function()
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'navarasu/onedark.nvim'
  use 'https://gitlab.com/__tpb/monokai-pro.nvim'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- File Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Status line
  use 'feline-nvim/feline.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
end)
