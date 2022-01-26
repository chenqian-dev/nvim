local M = {}

M.setup = function()
    local present, gitsigns = pcall(require, "gitsigns")
    if present then
       local default = {
          signs = {
            add          = {hl = 'GitSignsAdd'   , text = '▋', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
            change       = {hl = 'GitSignsChange', text = '▋', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
            delete       = {hl = 'GitSignsDelete', text = '▋', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
            topdelete    = {hl = 'GitSignsDelete', text = '▔', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
            changedelete = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
          },
          keymaps = {
            -- Default keymap options
            noremap = true,
            buffer = true,
          },
       }
       gitsigns.setup(default)
    end
 end

return M