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
-- Because I need to save it somewhere:
-- Telescope can select multiple files with caps. 
-- <c-q> (ctrl-q) then opens them in a quick-fix list.
-- They can be navigated with ]q and [q (bracket determines direction (for :cnext and :cprevious (:cn :cp)).

-- The following changes this to be æq and 'q, as [q and ]q
-- bracket prefixes: MUST be remap=true to reach plugin/default [x ]x mappings
vim.keymap.set({ 'n', 'x', 'o' }, 'æ', '[', { remap = true })
vim.keymap.set({ 'n', 'x', 'o' }, "'", ']', { remap = true })
-- marks live on g' now: g'' g'. g'a  (and work as motions: dg'a)

