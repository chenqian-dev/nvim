local module = {}

function module.load(packer)
  packer.use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function() 
      require'galaxyline'.setup {
        --section.left[1] = {
        --  RainbowRed = {
        --    provider = function() return '▊ ' end,
        --    highlight = {colors.blue,colors.bg}
        --  },
        --},
        section.left[2] = {
          ViMode = {
            provider = function()
              -- auto change color according the vim mode
              local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                [''] = colors.blue,V=colors.blue,
                c = colors.magenta,no = colors.red,s = colors.orange,
                S=colors.orange,[''] = colors.orange,
                ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                cv = colors.red,ce=colors.red, r = colors.cyan,
                rm = colors.cyan, ['r?'] = colors.cyan,
                ['!']  = colors.red,t = colors.red}
              vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..colors.bg)
              return '  '
            end,
          },
        },
        section.left[3] = {
          FileSize = {
            provider = 'FileSize',
            condition = condition.buffer_not_empty,
            highlight = {colors.fg,colors.bg}
          }
        }
      }
    end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end

return module
