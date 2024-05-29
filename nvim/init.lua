vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.cursorline = true

vim.g.mapleader = '\\'


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins_")
require("treesitter")
require("config-vim")
require("language-server")
require("statusline")
require("fileexplore")

vim.api.nvim_set_keymap('', 'ø', 'l', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'l', 'k', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'k', 'j', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'j', 'h', { noremap = true, silent = false })

