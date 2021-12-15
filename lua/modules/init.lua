return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    vim.api.nvim_command("packadd packer.nvim")
    packer = require("packer")

    -- theme
    require("modules/theme/nvim-web-devicons").load(packer)
    require("modules/theme/nord").load(packer)
    require("modules/theme/zephyr").load(packer)

    -- editor
    require("modules/editor/nvim-tree").load(packer)
    require("modules/editor/nvim-treesitter").load(packer)
    require("modules/editor/telescope").load(packer)
    require("modules/editor/telescope-fzf-native").load(packer)

    -- ui
    require("modules/ui/bufferline").load(packer)
    require("modules/ui/galaxyline").load(packer)

    -- completion
    require("modules/completion/nvim-lspconfig").load(packer)
    require("modules/completion/vista").load(packer)
    require("modules/completion/nvim-cmp").load(packer)

    -- tools
    require("modules/tools/vim-markdown").load(packer)
    require("modules/tools/rnvimr").load(packer)
    require("modules/tools/gitsigns").load(packer)


end)
