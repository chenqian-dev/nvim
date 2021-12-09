local module = {}

function module.load(packer)
    packer.use {
        'rhysd/accelerated-jk'
    }
end

return module