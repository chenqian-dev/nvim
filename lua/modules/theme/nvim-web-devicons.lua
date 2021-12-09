local module = {}

function module.load(packer)
    packer.use {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require'nvim-web-devicons'.setup {
                default = true
            }
        end,
    }
end

return module