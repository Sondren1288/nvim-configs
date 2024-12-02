
return require('lazy').setup({
  'nvim-lua/plenary.nvim',
  'mrcjkb/haskell-tools.nvim',
  'nvim-telescope/telescope.nvim', -- optional
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  },
  -- Statusline
  --use 'tamton-aquib/staline.nvim'
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    enabled = false
  },
  {
    'feline-nvim/feline.nvim',
  },
  -- Icons for statuslines and similar
  'nvim-tree/nvim-web-devicons',

  -- File tree explorer to the side
  'nvim-tree/nvim-tree.lua',
 
  -- For language servers and such
  'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip', -- Snippets plugin

  -- Git
  'tpope/vim-fugitive', 
  -- colorschemes
  'rebelot/kanagawa.nvim',
  'morhetz/gruvbox',
  'cliuj/vim-dark-meadow',
  'Shadorain/shadotheme',
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    config = function()
      vim.cmd([[colorscheme terafox]])
    end,
  },

  'folke/tokyonight.nvim',
  'marko-cerovac/material.nvim',
  'thedenisnikulin/vim-cyberpunk',
  'MuazAlhaidar/Breath2_Ripoff_Vim_Theme',
  'eddyekofo94/gruvbox-flat.nvim',
})
