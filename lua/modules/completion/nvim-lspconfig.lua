local module = {}

function module.load(packer)
    packer.use {
        'neovim/nvim-lspconfig',
        config = function()
            require'lspconfig'.clangd.setup{
                filetypes = { "c", "cc", "cpp", "objc", "objcpp" }
            }
            require'lspconfig'.java_language_server.setup{}
        end,
    }
end

return module
