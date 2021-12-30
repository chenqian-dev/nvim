local module = {}

function module.load(packer)
  packer.use {
    'sbdchd/neoformat'
  }

  vim.g.neoformat_enable_cpp = 'clangforamt'
  vim.g.neoformat_enable_c = 'clangforamt'

end

return module
