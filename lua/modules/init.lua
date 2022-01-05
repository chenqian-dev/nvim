local command = vim.api.nvim_command
local fn = vim.fn

-- 安装 packer
local packer_install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(packer_install_path)) > 0 then
  command('!git clone https://github.com/wbthomason/packer.nvim '..packer_install_path)
  command('packadd packer.nvim')
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  vim.api.nvim_command("packadd packer.nvim")
  packer = require("packer")

  -- theme
  require("modules/theme/nvim-web-devicons").load(packer)
  require("modules/theme/nord").load(packer)
  require("modules/theme/onenord").load(packer)
  require("modules/theme/vscode").load(packer)
  require("modules/theme/zephyr").load(packer)

  -- editor
  require("modules/editor/nvim-tree").load(packer)
  require("modules/editor/nvim-treesitter").load(packer)
  require("modules/editor/telescope").load(packer)
  require("modules/editor/telescope-fzf-native").load(packer)
  require("modules/editor/indent-blankline").load(packer)
  require("modules/editor/neoformat").load(packer)
  require("modules/editor/accelerated-jk").load(packer)
  require("modules/editor/markdown").load(packer)

  -- ui
  require("modules/ui/bufferline").load(packer)
  require("modules/ui/galaxyline").load(packer)

  -- tools
  require("modules/tools/rnvimr").load(packer)
  require("modules/tools/gitsigns").load(packer)
  require("modules/tools/toggleterm").load(packer)

  -- completion
  require("modules/completion/nvim-lspconfig").load(packer)
  require("modules/completion/nvim-cmp").load(packer)
  require("modules/completion/vista").load(packer)
  require("modules/completion/nvim-autopairs").load(packer)
  require("modules/completion/comment").load(packer)
end)
