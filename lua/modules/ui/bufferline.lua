local module = {}

function module.load(packer)
    packer.use {
        'akinsho/bufferline.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require'bufferline'.setup {
                options = {
                    -- 使用 nvim 内置lsp
                    diagnostics = "nvim_lsp",
                    -- 左侧让出 nvim-tree 的位置
                    offsets = {{
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }}
                }
            }
        end,
    }
end

return module