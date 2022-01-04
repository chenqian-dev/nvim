local module = {}

function module.load(packer)
  packer.use {
    'neovim/nvim-lspconfig',
    config = function()
      local nvim_lsp = require'lspconfig'
      nvim_lsp.clangd.setup{
        filetypes = { "c", "cc", "cpp", "objc", "objcpp" },
        flags = {
          debounce_text_changes = 150,
        }
      }
      nvim_lsp.cmake.setup{}
      nvim_lsp.jdtls.setup{
        cmd = {"jdt-language-server"},
        root_dir = require'lspconfig/util'.root_pattern("setting.gradle"),
      }
    end,
  }

  vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
  })

end

return module
