require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'haskell',
    'python',
    'c',
    'vim',
    'latex',
  },
  auto_install = true,
  highlight = {
    enable = true,
  }

}
