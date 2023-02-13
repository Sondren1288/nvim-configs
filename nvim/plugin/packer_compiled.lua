-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sondre/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sondre/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sondre/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sondre/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sondre/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["haskell-tools.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/haskell-tools.nvim",
    url = "https://github.com/mrcjkb/haskell-tools.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lilypond-suite"] = {
    config = { "\27LJ\2\nò\f\0\0\6\0:\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2.\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3/\0025\0031\0005\0040\0=\4\5\0035\0042\0=\4\a\3=\0033\0025\0035\0005\0044\0=\4\5\0035\0046\0005\0057\0=\0058\4=\4\a\3=\0039\2B\0\2\1K\0\1\0\vplayer\14mpv_flags\1\4\0\0%--msg-level=cplayer=no,ffmpeg=no\v--loop\27--config-dir=/dev/null\1\0\6\brow\a2%\17border_style\vsingle\nwidth\a37\vheight\0061\bcol\b99%\17winhighlight%Normal:Normal,FloatBorder:Normal\1\0\0\1\0\v\rbackward\6h\19increase_speed\6k\tquit\6q\16halve_speed\n<S-j>\17double_speed\n<S-k>\19decrease_speed\6j\18small_forward\n<S-l>\fforward\6l\19small_backward\n<S-h>\tloop\n<A-l>\15play_pause\6p\nlatex\1\0\1\15clean_logs\1\1\0\0\1\0\3\fcompile\t<F5>\ropen_pdf\t<F6>\20lilypond_syntax\t<F3>\rlilypond\1\0\0\15highlights\14lilyChord\1\0\3\tbold\2\afg\17lightMagenta\fctermfg\17lightMagenta\14lilyPitch\1\0\1\tlink\rFunction\19lilyTranslator\1\0\1\tlink\tType\rlilyGrob\1\0\1\tlink\fInclude\16lilyContext\1\0\1\tlink\tType\21lilyArticulation\1\0\1\tlink\fPreProc\17lilyFunction\1\0\1\tlink\14Statement\15lilyMarkup\1\0\1\tbold\2\15lilyLyrics\1\0\1\tlink\fSpecial\15lilyScheme\1\0\1\tlink\fSpecial\17lilyArgument\1\0\1\tlink\tType\16lilySpecial\1\0\1\tbold\2\16lilyBoolean\1\0\1\tlink\fBoolean\flilyVar\1\0\1\tlink\bTag\15lilyNumber\1\0\1\tlink\vNumber\16lilyComment\1\0\1\tlink\fComment\16lilyDynamic\1\0\1\tbold\2\15lilyString\1\0\0\1\0\1\tlink\vString\foptions\1\0\6\14main_file\fmain.ly\voutput\bpdf\21pitches_language\fdefault\25hyphenation_language\15en_DEFAULT\16include_dir\n$HOME\16main_folder\n%:p:h\rmappings\1\0\0\1\0\f\vplayer\t<F3>\15add_hyphen\15<leader>ah\20del_prev_hyphen\15<leader>dH\18insert_hyphen\15<leader>ih\24del_selected_hyphen\15<leader>dh\28hyphenation_change_lang\n<F11>\16hyphenation\n<F12>\fcompile\t<F5>\19insert_version\t<F4>\19switch_buffers\14<A-Space>\ropen_pdf\t<F6>\20del_next_hyphen\15<leader>dh\nsetup\tnvls\frequire\0" },
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-lilypond-suite",
    url = "https://github.com/martineausimon/nvim-lilypond-suite"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  nvls = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/nvls",
    url = "https://github.com/andyl/nvls"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  shadotheme = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/shadotheme",
    url = "https://github.com/Shadorain/shadotheme"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-dark-meadow"] = {
    loaded = true,
    path = "/home/sondre/.local/share/nvim/site/pack/packer/start/vim-dark-meadow",
    url = "https://github.com/cliuj/vim-dark-meadow"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lilypond-suite
time([[Config for nvim-lilypond-suite]], true)
try_loadstring("\27LJ\2\nò\f\0\0\6\0:\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2.\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3/\0025\0031\0005\0040\0=\4\5\0035\0042\0=\4\a\3=\0033\0025\0035\0005\0044\0=\4\5\0035\0046\0005\0057\0=\0058\4=\4\a\3=\0039\2B\0\2\1K\0\1\0\vplayer\14mpv_flags\1\4\0\0%--msg-level=cplayer=no,ffmpeg=no\v--loop\27--config-dir=/dev/null\1\0\6\brow\a2%\17border_style\vsingle\nwidth\a37\vheight\0061\bcol\b99%\17winhighlight%Normal:Normal,FloatBorder:Normal\1\0\0\1\0\v\rbackward\6h\19increase_speed\6k\tquit\6q\16halve_speed\n<S-j>\17double_speed\n<S-k>\19decrease_speed\6j\18small_forward\n<S-l>\fforward\6l\19small_backward\n<S-h>\tloop\n<A-l>\15play_pause\6p\nlatex\1\0\1\15clean_logs\1\1\0\0\1\0\3\fcompile\t<F5>\ropen_pdf\t<F6>\20lilypond_syntax\t<F3>\rlilypond\1\0\0\15highlights\14lilyChord\1\0\3\tbold\2\afg\17lightMagenta\fctermfg\17lightMagenta\14lilyPitch\1\0\1\tlink\rFunction\19lilyTranslator\1\0\1\tlink\tType\rlilyGrob\1\0\1\tlink\fInclude\16lilyContext\1\0\1\tlink\tType\21lilyArticulation\1\0\1\tlink\fPreProc\17lilyFunction\1\0\1\tlink\14Statement\15lilyMarkup\1\0\1\tbold\2\15lilyLyrics\1\0\1\tlink\fSpecial\15lilyScheme\1\0\1\tlink\fSpecial\17lilyArgument\1\0\1\tlink\tType\16lilySpecial\1\0\1\tbold\2\16lilyBoolean\1\0\1\tlink\fBoolean\flilyVar\1\0\1\tlink\bTag\15lilyNumber\1\0\1\tlink\vNumber\16lilyComment\1\0\1\tlink\fComment\16lilyDynamic\1\0\1\tbold\2\15lilyString\1\0\0\1\0\1\tlink\vString\foptions\1\0\6\14main_file\fmain.ly\voutput\bpdf\21pitches_language\fdefault\25hyphenation_language\15en_DEFAULT\16include_dir\n$HOME\16main_folder\n%:p:h\rmappings\1\0\0\1\0\f\vplayer\t<F3>\15add_hyphen\15<leader>ah\20del_prev_hyphen\15<leader>dH\18insert_hyphen\15<leader>ih\24del_selected_hyphen\15<leader>dh\28hyphenation_change_lang\n<F11>\16hyphenation\n<F12>\fcompile\t<F5>\19insert_version\t<F4>\19switch_buffers\14<A-Space>\ropen_pdf\t<F6>\20del_next_hyphen\15<leader>dh\nsetup\tnvls\frequire\0", "config", "nvim-lilypond-suite")
time([[Config for nvim-lilypond-suite]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
