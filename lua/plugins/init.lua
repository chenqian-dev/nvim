return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    vim.api.nvim_command("packadd packer.nvim")
    packer = require("packer")

    -- theme nord
    require("plugins/nord").load(packer)

    -- nvim-tree
    require("plugins/nvim-tree").load(packer)


end)