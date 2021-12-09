local module = {}

function module.load(packer)
    packer.use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        -- config = function() 
        --     require'galaxyline'.setup {
                
        --     }
        -- end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
end

return module