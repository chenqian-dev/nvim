-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/phelps-ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/phelps-ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/phelps-ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/phelps-ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/phelps-ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nÀ\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\rfiletype\rNvimTree\14highlight\14Directory\ttext\18File Explorer\15text_align\tleft\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä Â\3\0\0\a\1&\0M5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0'\5#\0-\6\0\0009\6$\6&\3\6\3B\1\2\1'\1%\0L\1\2\0\1¿\nÔåå  \abg\f guibg=\tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bredS\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\14dashboard\2\5\2\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôëø \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä√\21\1\0\v\0x\0¡\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0005\4\a\0=\4\6\0009\4\b\0035\5\15\0005\6\n\0003\a\t\0=\a\v\0064\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\16\5>\5\1\0049\4\b\0035\5\19\0005\6\18\0003\a\17\0=\a\v\6=\6\20\5>\5\2\0049\4\b\0035\5\25\0005\6\21\0009\a\22\2=\a\23\0064\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\26\5>\5\3\0049\4\b\0035\5\30\0005\6\27\0009\a\22\2=\a\23\0064\a\3\0006\b\0\0'\n\28\0B\b\2\0029\b\29\b>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\31\5>\5\4\0049\4\b\0035\5\"\0005\6 \0009\a\22\2=\a\23\0065\a!\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6#\5>\5\5\0049\4\b\0035\5'\0005\6$\0005\a%\0009\b\r\1>\b\2\a=\a&\0064\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6(\5>\5\6\0049\4\b\0035\5,\0005\6)\0005\a*\0009\b\r\1>\b\2\a=\a&\0065\a+\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6-\5>\5\a\0049\4\b\0035\0050\0005\6.\0004\a\3\0009\b/\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0061\5>\5\b\0049\4\b\0035\0054\0005\0062\0004\a\3\0009\b3\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0065\5>\5\t\0049\4\b\0035\0058\0005\0066\0004\a\3\0009\b7\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0069\5>\5\n\0049\4\b\0035\5;\0005\6:\0004\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6<\5>\5\v\0049\4=\0035\5A\0005\6>\0003\a?\0=\a\23\0065\a@\0009\b3\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6B\5>\5\1\0049\4C\0035\5I\0005\6D\0009\aE\2=\a\23\0065\aF\0009\b\r\1>\b\2\a=\a&\0065\aH\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6J\5>\5\1\0049\4C\0035\5N\0005\6K\0009\aE\2=\a\23\0065\aL\0009\b\r\1>\b\2\a=\a&\0065\aM\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6O\5>\5\2\0049\4C\0035\5V\0005\6Q\0003\aP\0=\a\v\0069\aR\2=\a\23\0065\aS\0009\b\r\1>\b\2\a=\a&\0065\aU\0009\bT\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6W\5>\5\3\0049\4C\0035\5Z\0005\6X\0009\aR\2=\a\23\0065\aY\0009\bT\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6[\5>\5\4\0049\4C\0035\5]\0005\6\\\0009\aE\2=\a\23\0064\a\3\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6^\5>\5\5\0049\4C\0035\5a\0005\6_\0009\aE\2=\a\23\0064\a\3\0009\b`\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6b\5>\5\6\0049\4C\0035\5d\0005\6c\0009\aE\2=\a\23\0064\a\3\0009\b/\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6e\5>\5\a\0049\4C\0035\5h\0005\6g\0003\af\0=\a\v\0064\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6i\5>\5\b\0049\4j\0035\5n\0005\6k\0005\al\0009\b\r\1>\b\2\a=\a&\0065\am\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6o\5>\5\1\0049\4j\0035\5r\0005\6p\0009\a\22\2=\a\23\0065\aq\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6s\5>\5\2\0049\4t\0035\5v\0005\6u\0004\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6w\5>\5\1\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\2\ticon\n ÔÖÜ \rprovider\15DiffRemove\17DiffModified\1\0\0\vorange\1\0\2\ticon\t Ôßâ\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\n ÔÉæ \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15FileFormat\15FileEncode\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\2\0\0\tNONE\18hide_in_width\1\0\2\14separator\6 \rprovider\15FileEncode\nright\18ShowLspClient\1\0\0\1\4\0\0\0\0\tbold\0\1\0\2\ticon\rÔÇÖ LSP:\rprovider\17GetLspClient\bmid\19DiagnosticInfo\1\0\0\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\bred\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\fPerCent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\16LinePercent\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\afg\14condition\21buffer_not_empty\1\0\1\rprovider\rFileSize\vViMode\1\0\0\1\0\0\0\15RainbowRed\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\nvista\vpacker\20short_line_list\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n·\2\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\fkeymaps\1\0\2\fnoremap\2\vbuffer\2\nsigns\1\0\0\17changedelete\1\0\2\ttext\b‚ñé\ahl\20GitGutterChange\14topdelete\1\0\2\ttext\b‚ñî\ahl\26GitGutterDeleteChange\vdelete\1\0\2\ttext\b‚ñã\ahl\20GitGutterDelete\vchange\1\0\2\ttext\b‚ñã\ahl\20GitGutterChange\badd\1\0\0\1\0\2\ttext\b‚ñã\ahl\17GitGutterAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nı\2\0\0\6\1\19\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\2-\3\0\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\n\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\v\0009\0\3\0005\2\f\0-\3\0\0=\3\a\0025\3\r\0=\3\14\0026\3\0\0'\5\15\0B\3\2\0029\3\16\3'\5\17\0B\3\2\2=\3\18\2B\0\2\1K\0\1\0\0\0\rroot_dir\19setting.gradle\17root_pattern\19lspconfig/util\bcmd\1\2\0\0\24jdt-language-server\1\0\0\njdtls\ncmake\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\14filetypes\1\0\0\1\6\0\0\6c\acc\bcpp\tobjc\vobjcpp\nsetup\vclangd\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n÷\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  tabular = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n’\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/phelps-ubuntu/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n÷\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\t<BS>\21node_incremental\t<CR>\19init_selection\t<CR>\22scope_incremental\n<TAB>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\15auto_close\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n’\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n·\2\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\fkeymaps\1\0\2\fnoremap\2\vbuffer\2\nsigns\1\0\0\17changedelete\1\0\2\ttext\b‚ñé\ahl\20GitGutterChange\14topdelete\1\0\2\ttext\b‚ñî\ahl\26GitGutterDeleteChange\vdelete\1\0\2\ttext\b‚ñã\ahl\20GitGutterDelete\vchange\1\0\2\ttext\b‚ñã\ahl\20GitGutterChange\badd\1\0\0\1\0\2\ttext\b‚ñã\ahl\17GitGutterAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\rfiletype\rNvimTree\14highlight\14Directory\ttext\18File Explorer\15text_align\tleft\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nı\2\0\0\6\1\19\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\2-\3\0\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\n\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\v\0009\0\3\0005\2\f\0-\3\0\0=\3\a\0025\3\r\0=\3\14\0026\3\0\0'\5\15\0B\3\2\0029\3\16\3'\5\17\0B\3\2\2=\3\18\2B\0\2\1K\0\1\0\0\0\rroot_dir\19setting.gradle\17root_pattern\19lspconfig/util\bcmd\1\2\0\0\24jdt-language-server\1\0\0\njdtls\ncmake\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\14filetypes\1\0\0\1\6\0\0\6c\acc\bcpp\tobjc\vobjcpp\nsetup\vclangd\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä Â\3\0\0\a\1&\0M5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0'\5#\0-\6\0\0009\6$\6&\3\6\3B\1\2\1'\1%\0L\1\2\0\1¿\nÔåå  \abg\f guibg=\tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bredS\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\14dashboard\2\5\2\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôëø \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä√\21\1\0\v\0x\0¡\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0005\4\a\0=\4\6\0009\4\b\0035\5\15\0005\6\n\0003\a\t\0=\a\v\0064\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\16\5>\5\1\0049\4\b\0035\5\19\0005\6\18\0003\a\17\0=\a\v\6=\6\20\5>\5\2\0049\4\b\0035\5\25\0005\6\21\0009\a\22\2=\a\23\0064\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\26\5>\5\3\0049\4\b\0035\5\30\0005\6\27\0009\a\22\2=\a\23\0064\a\3\0006\b\0\0'\n\28\0B\b\2\0029\b\29\b>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6\31\5>\5\4\0049\4\b\0035\5\"\0005\6 \0009\a\22\2=\a\23\0065\a!\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6#\5>\5\5\0049\4\b\0035\5'\0005\6$\0005\a%\0009\b\r\1>\b\2\a=\a&\0064\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6(\5>\5\6\0049\4\b\0035\5,\0005\6)\0005\a*\0009\b\r\1>\b\2\a=\a&\0065\a+\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6-\5>\5\a\0049\4\b\0035\0050\0005\6.\0004\a\3\0009\b/\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0061\5>\5\b\0049\4\b\0035\0054\0005\0062\0004\a\3\0009\b3\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0065\5>\5\t\0049\4\b\0035\0058\0005\0066\0004\a\3\0009\b7\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\0069\5>\5\n\0049\4\b\0035\5;\0005\6:\0004\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6<\5>\5\v\0049\4=\0035\5A\0005\6>\0003\a?\0=\a\23\0065\a@\0009\b3\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6B\5>\5\1\0049\4C\0035\5I\0005\6D\0009\aE\2=\a\23\0065\aF\0009\b\r\1>\b\2\a=\a&\0065\aH\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6J\5>\5\1\0049\4C\0035\5N\0005\6K\0009\aE\2=\a\23\0065\aL\0009\b\r\1>\b\2\a=\a&\0065\aM\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6O\5>\5\2\0049\4C\0035\5V\0005\6Q\0003\aP\0=\a\v\0069\aR\2=\a\23\0065\aS\0009\b\r\1>\b\2\a=\a&\0065\aU\0009\bT\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6W\5>\5\3\0049\4C\0035\5Z\0005\6X\0009\aR\2=\a\23\0065\aY\0009\bT\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6[\5>\5\4\0049\4C\0035\5]\0005\6\\\0009\aE\2=\a\23\0064\a\3\0009\bG\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6^\5>\5\5\0049\4C\0035\5a\0005\6_\0009\aE\2=\a\23\0064\a\3\0009\b`\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6b\5>\5\6\0049\4C\0035\5d\0005\6c\0009\aE\2=\a\23\0064\a\3\0009\b/\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6e\5>\5\a\0049\4C\0035\5h\0005\6g\0003\af\0=\a\v\0064\a\3\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6i\5>\5\b\0049\4j\0035\5n\0005\6k\0005\al\0009\b\r\1>\b\2\a=\a&\0065\am\0009\b\f\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6o\5>\5\1\0049\4j\0035\5r\0005\6p\0009\a\22\2=\a\23\0065\aq\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6s\5>\5\2\0049\4t\0035\5v\0005\6u\0004\a\3\0009\b\24\1>\b\1\a9\b\r\1>\b\2\a=\a\14\6=\6w\5>\5\1\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\2\ticon\n ÔÖÜ \rprovider\15DiffRemove\17DiffModified\1\0\0\vorange\1\0\2\ticon\t Ôßâ\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\n ÔÉæ \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15FileFormat\15FileEncode\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\2\0\0\tNONE\18hide_in_width\1\0\2\14separator\6 \rprovider\15FileEncode\nright\18ShowLspClient\1\0\0\1\4\0\0\0\0\tbold\0\1\0\2\ticon\rÔÇÖ LSP:\rprovider\17GetLspClient\bmid\19DiagnosticInfo\1\0\0\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\bred\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\fPerCent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\16LinePercent\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\afg\14condition\21buffer_not_empty\1\0\1\rprovider\rFileSize\vViMode\1\0\0\1\0\0\0\15RainbowRed\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\nvista\vpacker\20short_line_list\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
