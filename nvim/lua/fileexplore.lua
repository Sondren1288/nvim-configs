-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Empty setup using defaults
require("nvim-tree").setup()


local function open_nvim_tree(data)
  -- Buffer is real file on disk
  local real_file = vim.fn.filereadable(data.file) == 1
  -- Buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
  
  -- Buffer is directory
  local directory = vim.fn.isdirectory(data.file) == 1
  
  if real_file then
    return
  end
  if no_name then
    require('nvim-tree.api').tree.toggle({focus = false})
    return
  end

  -- Open tree
  require('nvim-tree.api').tree.open()

end

vim.api.nvim_create_autocmd({"VimEnter"}, {callback = open_nvim_tree})
vim.keymap.set('n', '<leader>fl', function ()
    require('nvim-tree.api').tree.toggle({focus=false})
  end, {silent=true, noremap=true})
vim.keymap.set('n', '<leader>ff', function()
    require('nvim-tree.api').tree.toggle({focus=true})
  end, {silent=true, noremap=true})
