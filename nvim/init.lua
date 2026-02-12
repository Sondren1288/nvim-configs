vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.cursorline = true

vim.g.mapleader = '\\'

vim.api.nvim_set_keymap('', 'ø', 'l', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'l', 'k', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'k', 'j', { noremap = true, silent = false })
vim.api.nvim_set_keymap('', 'j', 'h', { noremap = true, silent = false })
vim.api.nvim_set_keymap('ca', 'Q', 'q', { noremap = true, silent = false })
vim.api.nvim_set_keymap('ca', 'W', 'w', { noremap = true, silent = false })
vim.keymap.set('n', '<C-W>ø', '<C-W>l')
vim.keymap.set('n', '<C-W>l', '<C-W>k')
vim.keymap.set('n', '<C-W>k', '<C-W>j')
vim.keymap.set('n', '<C-W>j', '<C-W>h')

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

require("color_correct")

-- Telescope things
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fr', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope search for string under cursor' })
vim.keymap.set('n', '<leader>fb', function() builtin.live_grep({grep_open_files=true}) end, { desc = 'Telescope find in buffers' })
vim.keymap.set('n', '<leader>fo', builtin.buffers, { desc = 'Telescope find buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fc', builtin.resume, { desc = 'Telescope continue (resume)' })
vim.keymap.set('n', '<leader>fp', builtin.planets, { desc = 'Telescope planets' })
vim.keymap.set('n', '<leader>fz', builtin.current_buffer_fuzzy_find, { desc = 'Telescope fuzzy for current buffer' })


vim.g["OmniSharp_server_path"] = "/usr/bin/OmniSharp"

