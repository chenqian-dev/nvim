local module = {}

function module.load(packer)
  packer.use {
    'liuchengxu/vista.vim',
  }
  vim.cmd [[
  let g:vista_default_executive = 'nvim_lsp'
  let g:vista_sidebar_width = 50
  let g:vista_cursor_delay = 50
  let g:vista#renderer#enable_icon = 1
  ]]

end

return module
