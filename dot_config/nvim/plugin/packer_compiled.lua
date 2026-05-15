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
local package_path_str = "/home/hawk0120/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/hawk0120/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/hawk0120/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/hawk0120/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hawk0120/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
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
  ["99"] = {
    config = { "\27LJ\2\n \0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\vvisual+\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\22stop_all_requests \0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\vsearchñ\2\1\0\n\0\26\0/6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\0026\2\2\0009\2\5\0029\2\6\2\18\4\1\0B\2\2\0029\3\a\0005\5\14\0005\6\t\0009\a\b\0=\a\n\6'\a\v\0\18\b\2\0'\t\f\0&\a\t\a=\a\r\6=\6\15\5B\3\2\0016\3\2\0009\3\16\0039\3\17\3'\5\18\0'\6\19\0003\a\20\0B\3\4\0016\3\2\0009\3\16\0039\3\17\3'\5\21\0'\6\22\0003\a\23\0B\3\4\0016\3\2\0009\3\16\0039\3\17\3'\5\21\0'\6\24\0003\a\25\0B\3\4\0012\0\0€K\0\1\0\0\15<leader>9s\0\15<leader>9x\6n\0\15<leader>9v\6v\bset\vkeymap\vlogger\1\0\1\vlogger\0\tpath\14.99.debug\n/tmp/\nlevel\1\0\3\tpath\0\19print_on_error\2\nlevel\0\nDEBUG\nsetup\rbasename\afs\bcwd\auv\bvim\a99\frequire\0" },
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/99",
    url = "https://github.com/ThePrimeagen/99"
  },
  ["btw.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/btw.nvim",
    url = "https://github.com/letieu/btw.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["llama.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/llama.nvim",
    url = "https://github.com/hmunye/llama.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["ollamachad.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/ollamachad.nvim",
    url = "https://github.com/Lommix/ollamachad.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/hawk0120/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: 99
time([[Config for 99]], true)
try_loadstring("\27LJ\2\n \0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\vvisual+\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\22stop_all_requests \0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0À\vsearchñ\2\1\0\n\0\26\0/6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\0026\2\2\0009\2\5\0029\2\6\2\18\4\1\0B\2\2\0029\3\a\0005\5\14\0005\6\t\0009\a\b\0=\a\n\6'\a\v\0\18\b\2\0'\t\f\0&\a\t\a=\a\r\6=\6\15\5B\3\2\0016\3\2\0009\3\16\0039\3\17\3'\5\18\0'\6\19\0003\a\20\0B\3\4\0016\3\2\0009\3\16\0039\3\17\3'\5\21\0'\6\22\0003\a\23\0B\3\4\0016\3\2\0009\3\16\0039\3\17\3'\5\21\0'\6\24\0003\a\25\0B\3\4\0012\0\0€K\0\1\0\0\15<leader>9s\0\15<leader>9x\6n\0\15<leader>9v\6v\bset\vkeymap\vlogger\1\0\1\vlogger\0\tpath\14.99.debug\n/tmp/\nlevel\1\0\3\tpath\0\19print_on_error\2\nlevel\0\nDEBUG\nsetup\rbasename\afs\bcwd\auv\bvim\a99\frequire\0", "config", "99")
time([[Config for 99]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)

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
