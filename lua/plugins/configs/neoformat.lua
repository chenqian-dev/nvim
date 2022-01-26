local M = {}

M.setup = function()
   vim.g.neoformat_enable_cpp = 'clangforamt'
   vim.g.neoformat_enable_c = 'clangforamt'
 end

return M