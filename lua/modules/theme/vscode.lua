-- 主题
local module = {}

function module.load(packer)
    packer.use('Mofiqul/vscode.nvim') 
    vim.g.vscode_style = "dark"
end

return module
