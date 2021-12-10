local module = {}
function module.load(packer)
  packer.use {
    'neovim/nvim-lspconfig',
    config = function()
      require'lspconfig'.clangd.setup{
        filetypes = { "c", "cc", "cpp", "objc", "objcpp" },
      }
      require'lspconfig'.jdtls.setup{
        cmd = {'jdtls'},
        root_dir = vim.fn.getcwd()
      }
    end,
  }
end

return module
