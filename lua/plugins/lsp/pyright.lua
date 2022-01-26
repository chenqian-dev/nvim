local M = {}

M.setup = function()
    local present, lspconfig = pcall(require, "lspconfig")
    if present then
       lspconfig.pyright.setup{}
    end
 end

return M