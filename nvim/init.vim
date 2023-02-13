syntax on "Enable Syntaxing
set number
set relativenumber "Enable numbers on left
set expandtab "Expand tab to space 
set tabstop=4
set shiftwidth=4
set nowrap
set cursorline
filetype on "Enable filetypes
filetype plugin on
filetype indent on

colorscheme terafox
" Keybinds
lua require('remap')

"lua require('haskell-tools')
"lua require('haskell-self')
lua require('ensure-packer')
" ensure-packer has to be the first to run for the others to work
" and even then, it might require some fiddling with :PackerUpdate
" Most likely have to be run a couple of times
lua require('plugins')
lua require('treesitter')
lua require('config-vim')
lua require('language-server')
lua require('statusline')
lua require('fileexplore')

"Rebind move-keys for norwegian experience
:nnoremap ø l
:nnoremap l k
:nnoremap k j
:nnoremap j h
let mapleader='\'
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
