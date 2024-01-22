-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('lazy').setup({
  -- Packer can manage itself
  'wbthomason/packer.nvim',
  'nvim-lua/plenary.nvim',
  {
    'mrcjkb/haskell-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim', -- optional
    },
    branch = '1.x.x', -- recommended
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  },
  -- Statusline
  --use 'tamton-aquib/staline.nvim'
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  },
  'feline-nvim/feline.nvim',
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
  'EdenEast/nightfox.nvim',
  'folke/tokyonight.nvim',
  'marko-cerovac/material.nvim',
  'thedenisnikulin/vim-cyberpunk',
  'MuazAlhaidar/Breath2_Ripoff_Vim_Theme',
  'eddyekofo94/gruvbox-flat.nvim',

  -- Arduino
  'sudar/vim-arduino-syntax',

  -- Lilypond 
  'andyl/nvls',

--  { 'martineausimon/nvim-lilypond-suite',
--    requires = { 'MunifTanjim/nui.nvim' },
--    config = function()
--      require('nvls').setup({
--        lilypond = {
--          mappings = {
--            player = "<F3>",
--            compile = "<F5>",
--            open_pdf = "<F6>",
--            switch_buffers = "<A-Space>",
--            insert_version = "<F4>",
--            hyphenation = "<F12>",
--            hyphenation_change_lang = "<F11>",
--            insert_hyphen = "<leader>ih",
--            add_hyphen = "<leader>ah",
--            del_next_hyphen = "<leader>dh",
--            del_prev_hyphen = "<leader>dH",
--            del_selected_hyphen = "<leader>dh"
--          },
--          options = {
--            pitches_language = "default",
--            output = "pdf",
--            main_file = "main.ly",
--            main_folder = "%:p:h",
--            include_dir = "$HOME",
--            hyphenation_language = "en_DEFAULT"
--          },
--          highlights = {
--            lilyString = { link = "String" },
--            lilyDynamic = { bold = true },
--            lilyComment = { link = "Comment" },
--            lilyNumber = { link = "Number" },
--            lilyVar = { link = "Tag" },
--            lilyBoolean = { link = "Boolean" },
--            lilySpecial = { bold = true },
--            lilyArgument = { link = "Type" },
--            lilyScheme = { link = "Special" },
--            lilyLyrics = { link = "Special" },
--            lilyMarkup = { bold = true },
--            lilyFunction = { link = "Statement" },
--            lilyArticulation = { link = "PreProc" },
--            lilyContext = { link = "Type" },
--            lilyGrob = { link = "Include" },
--            lilyTranslator = { link = "Type" },
--            lilyPitch = { link = "Function" },
--            lilyChord = { 
--              ctermfg = "lightMagenta", 
--              fg = "lightMagenta", 
--              bold = true 
--            },
--          },
--        },
--        latex = {
--          mappings = {
--            compile = "<F5>",
--            open_pdf = "<F6>",
--            lilypond_syntax = "<F3>"
--          },
--          options = {
--            clean_logs = false,
--            include_dir = nil
--          },
--        },
--        player = {
--          mappings = {
--            quit = "q",
--            play_pause = "p",
--            loop = "<A-l>",
--            backward = "h",
--            small_backward = "<S-h>",
--            forward = "l",
--            small_forward = "<S-l>",
--            decrease_speed = "j",
--            increase_speed = "k",
--            halve_speed = "<S-j>",
--            double_speed = "<S-k>"
--          },
--          options = {
--            row = "2%",
--            col = "99%",
--            width = "37",
--            height = "1",
--            border_style = "single",
--            winhighlight = "Normal:Normal,FloatBorder:Normal",
--            mpv_flags = {
--              "--msg-level=cplayer=no,ffmpeg=no",
--              "--loop",
--              "--config-dir=/dev/null"
--            }
--          },
--        },
--      })
--    end}
})
