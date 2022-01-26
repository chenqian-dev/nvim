local M = {}

M.setup = function()
    local berrter_esc = require("better_escape")
    berrter_esc.setup {
        mapping = { "jk", "kj"},
        timeout = 300,
    }
end

return M