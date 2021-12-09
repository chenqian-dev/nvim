local module = {}

function module.load(packer)
    packer.use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require'nvim-tree'.setup {
                -- 关闭文件时自动关闭
                auto_close = true,
            }
        end,
    }
end

return module