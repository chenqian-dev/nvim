local packer = require("plugins.packer")

local use = packer.use
vim.g.current_theme = "onenord"

return packer.startup(function()
    -- packer.nvim
    use {
        "wbthomason/packer.nvim",
        event = "VimEnter"
    }

    -- plenary.nvim
    use "nvim-lua/plenary.nvim"

    -- theme onenord
    use {
        "rmehri01/onenord.nvim",
        after = "packer.nvim",
        config = function()
            require("onenord").setup()
        end
    }

    -- nvim-web-devicons
    use {
        "kyazdani42/nvim-web-devicons",
        after = "packer.nvim"
    }

    -- lualine.nvim
    use {
        "nvim-lualine/lualine.nvim",
        after = "nvim-web-devicons",
        config = function()
            require("plugins.configs.lualine").setup()
        end
    }

    -- bufferline.nvim
    use {
        "akinsho/bufferline.nvim",
        after = {"nvim-web-devicons"},
        config = function()
            require("plugins.configs.bufferline").setup()
        end
    }

    -- indent-blankline
    use {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        config = function()
            require("plugins.configs.indent-blankline").setup()
        end
    }

    -- nvim-colorizer
    use {
        "norcalli/nvim-colorizer.lua",
        event = "BufRead",
        config = function()
            require("plugins.configs.nvim-colorizer").setup()
        end
    }

    -- nvim-treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        event = "BufRead",
        config = function()
            require("plugins.configs.nvim-treesitter").setup()
        end
    }

    -- gitsigns
    use {
        "lewis6991/gitsigns.nvim",
        after = "plenary.nvim",
        config = function()
            require("plugins.configs.gitsigns").setup()
        end
    }

    -- vim-matchup
    use {
        "andymass/vim-matchup",
        opt = true
    }

    -- better-escape.nvim
    use {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("plugins.configs.better-escape").setup()
        end
    }

    -- comment
    use {
        "numToStr/Comment.nvim",
        module = "Comment",
        config = function()
            require("plugins.configs.comment").setup()
        end
    }

    -- nvim-tree.lua
    use {
        "kyazdani42/nvim-tree.lua",
        -- only set "after" if lazy load is disabled and vice versa for "cmd"
        after = "nvim-web-devicons",
        config = function()
            require("plugins.configs.nvim-tree").setup()
        end
    }

    -- telescope.nvim
    use {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("plugins.configs.telescope").setup()
        end
    }

    -- nvim-autopairs
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("plugins.configs.nvim-autopairs").setup()
        end
    }

    -- neoformat
    use {
        'sbdchd/neoformat',
        config = function()
            require("plugins.configs.neoformat").setup()
        end
    }

    -- markdown-preview
    use {
        'iamcco/markdown-preview.nvim',
        ft = 'markdown',
        run = 'cd app && yarn install'
    }

    -- accelerated-jk
    use {'rhysd/accelerated-jk'}

    -- nvim-lspconfig
    use {
       'neovim/nvim-lspconfig',
       config = function()
           require("plugins.configs.nvim-lspconfig").setup()
       end
   }

    -- vista
   packer.use {
    'liuchengxu/vista.vim',
    setup = function()
        vim.cmd [[
      let g:vista_default_executive = 'nvim_lsp'
      let g:vista_sidebar_width = 50
      let g:vista_cursor_delay = 50
      let g:vista#renderer#enable_icon = 1
      ]]
    end
  }
end)
