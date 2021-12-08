local plugin = {}

function plugin.load(packer)
    packer.use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require'nvim-tree'.setup {
                -- 关闭文件时自动关闭
                auto_close = true,
                -- 不显示 git 状态图标
                git = {
                    enable = false
                }
            }
        end,
    }
end

return plugin