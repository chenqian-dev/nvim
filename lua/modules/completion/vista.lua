local module = {}

function module.load(packer)
  packer.use {
    'liuchengxu/vista.vim',
  }
  vim.cmd [[
  let g:vista_default_executive = 'nvim_lsp'
  ]]

end

return module
