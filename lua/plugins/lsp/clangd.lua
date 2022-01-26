local M = {}

M.setup = function()
    local present, lspconfig = pcall(require, "lspconfig")
    if present then
       lspconfig.clangd.setup{
        filetypes = { "c", "cc", "cpp", "objc", "objcpp" },
        flags = {
          debounce_text_changes = 150,
        }
      }
    end
 end

return M