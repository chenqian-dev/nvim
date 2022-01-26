local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
   return
end

local default = {
   ensure_installed = {
      "lua",
      "vim",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
   matchup = {
      enable = true,              -- mandatory, false will disable the whole extension
   },
   theme = vim.g.current_theme
}

local M = {}
M.setup = function()
   ts_config.setup(default)
end

return M
