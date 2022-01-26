local M = {}

M.setup = function()
    local present, lspconfig = pcall(require, "lspconfig")
    if present then
       lspconfig.cmake.setup{}
    end
 end

return M