local module = {}

function module.load(packer)
  packer.use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require'telescope'.setup {
        defaults = {
          theme = "dropdown",
          file_ignore_patternss = {
            "*.o",
          }
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
          }
        }
      }
      require('telescope').load_extension('fzf')
    end,
  }
end

return module
