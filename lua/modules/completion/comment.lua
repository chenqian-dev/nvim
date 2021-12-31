local module = {}

function module.load(packer)
  packer.use {
    'numToStr/Comment.nvim',
    config = function()
      require'Comment'.setup{}
      end
  }
end

return module
