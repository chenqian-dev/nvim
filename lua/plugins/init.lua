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
    end,
    setup = function()
      require("core.mappings").bufferline()
    end,
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

  use {
    "phaazon/hop.nvim",
    config = function ()
      require("plugins.configs.hop").setup()
    end,
    setup = function()
      require("core.mappings").hop()
    end,

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
    end,
    setup = function()
      require("core.mappings").comment()
    end,
  }

  -- nvim-tree.lua
  use {
    "kyazdani42/nvim-tree.lua",
    -- only set "after" if lazy load is disabled and vice versa for "cmd"
    after = "nvim-web-devicons",
    config = function()
      require("plugins.configs.nvim-tree").setup()
    end,
    setup = function()
      require("core.mappings").nvimtree()
    end,
  }

  -- telescope.nvim
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugins.configs.telescope").setup()
    end,
    setup = function()
      require("core.mappings").telescope()
    end,
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
  use {
    'rhysd/accelerated-jk',
    setup = function()
      require("core.mappings").accelerated_jk_gj()
    end,
  }

  -- nvim-lspconfig
  use {'neovim/nvim-lspconfig'}
  require("plugins.configs.nvim-lspconfig").setup()
  require("core.mappings").lspconfig()

  -- nvim-cmp
  use {'hrsh7th/cmp-nvim-lsp', requires = {'neovim/nvim-lspconfig'}}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {"hrsh7th/nvim-cmp"}
  -- use {"hrsh7th/cmp-vsnip"}
  -- use {"hrsh7th/vim-vsnip"}
  use {"rafamadriz/friendly-snippets"}
  use {"L3MON4D3/LuaSnip"}
  use {"saadparwaiz1/cmp_luasnip"}

  require("plugins.configs.nvim-cmp").setup()

  -- vista
  use {'liuchengxu/vista.vim'}
  require("core.mappings").vista()
  vim.cmd [[
  let g:vista_default_executive = 'nvim_lsp'
  let g:vista_sidebar_width = 50
  let g:vista_cursor_delay = 50
  let g:vista#renderer#enable_icon = 1
  ]]

  use {"mfussenegger/nvim-dap"}
  use {"rcarriga/nvim-dap-ui"}
  use {"Pocco81/DAPInstall.nvim"}
  use {"akinsho/toggleterm.nvim"}
  require("plugins.configs.toggleterm").setup()
  require("core.mappings").toggleterm()
end)
