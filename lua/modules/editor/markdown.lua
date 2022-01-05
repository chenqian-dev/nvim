local module = {}

function module.load(packer)
    packer.use {
        'iamcco/markdown-preview.nvim',
        ft = 'markdown',
        run = 'cd app && yarn install'
    }
end

return module
