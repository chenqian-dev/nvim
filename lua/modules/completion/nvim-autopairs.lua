local module = {}

function module.load(packer)
  packer.use {
    'windwp/nvim-autopairs',
  }

  require('nvim-autopairs').setup{}
end

return module
