local module = {}

function module.load(packer)
  packer.use {
    'neoclide/coc.nvim',
    branch = 'release',
  }
end

return module

