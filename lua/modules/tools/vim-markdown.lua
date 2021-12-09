local module = {}

function module.load(packer)
    packer.use {
        'plasticboy/vim-markdown',
        requires = 'godlygeek/tabular',
    }

    vim.cmd [[set nofoldenable]]
end

return module