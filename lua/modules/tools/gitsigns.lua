local module = {}

function module.load(packer)
  packer.use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('gitsigns').setup {
        signs = {
          add = {hl = 'GitGutterAdd', text = '▋'},
          change = {hl = 'GitGutterChange',text= '▋'},
          delete = {hl= 'GitGutterDelete', text = '▋'},
          topdelete = {hl ='GitGutterDeleteChange',text = '▔'},
          changedelete = {hl = 'GitGutterChange', text = '▎'},
        },
        keymaps = {
          -- Default keymap options
          noremap = true,
          buffer = true,
        },
      }
    end
  }

  vim.cmd [[set nofoldenable]]
end

return module
