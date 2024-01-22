require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'haskell',
    'python',
    'c',
    'vim',
  },
  auto_install = true,
  highlight = {
    enable = true,
  }

}
