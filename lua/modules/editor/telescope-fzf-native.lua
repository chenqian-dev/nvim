local module = {}

function module.load(packer)
    packer.use {
      'nvim-telescope/telescope-fzf-native.nvim', run = 'make'
    }
end

return module
