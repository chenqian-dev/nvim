local M = {}

M.setup = function()
    local default = {
       filetype_exclude = {
          "help",
          "terminal",
          "dashboard",
          "packer",
          "lspinfo",
          "TelescopePrompt",
          "TelescopeResults",
          "nvchad_cheatsheet",
          'lsp-installer',
          "",
       },
       buftype_exclude = { "terminal" },
    }
    require("indent_blankline").setup(default)
 end

 return M