local M = {}

M.setup = function()
    
    require("plugins.lsp.bashls").setup()
    require("plugins.lsp.clangd").setup()
    require("plugins.lsp.cmake").setup()
    require("plugins.lsp.pyright").setup()
    require("plugins.lsp.sumneko").setup()

    vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
        severity_sort = false,
    })
 end

return M