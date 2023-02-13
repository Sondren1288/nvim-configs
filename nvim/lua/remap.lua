local map = vim.keymap.set
local opts = {noremap=true, silent=true}
map('n', '<leader>ø', '<C-w>l', opts)
map('n', '<leader>l', '<C-w>k', opts)
map('n', '<leader>k', '<C-w>j', opts)
map('n', '<leader>j', '<C-w>h', opts)

map('n', '<C-w>ø', '<C-w>l', opts)
map('n', '<C-w>l', '<C-w>k', opts)
map('n', '<C-w>k', '<C-w>j', opts)
map('n', '<C-w>j', '<C-w>h', opts)

map('n', '<C-w><C-ø>', '<C-w>l', opts)
map('n', '<C-w><C-l>', '<C-w>k', opts)
map('n', '<C-w><C-k>', '<C-w>j', opts)
map('n', '<C-w><C-j>', '<C-w>h', opts)
