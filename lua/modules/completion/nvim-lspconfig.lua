local module = {}

function module.load(packer)
    packer.use {
        'neovim/nvim-lspconfig',
        config = function()
            require'lspconfig'.clangd.setup{
                filetypes = { "c", "cc", "cpp", "objc", "objcpp" }
            }
        end,
    }
end

return module