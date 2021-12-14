local module = {}

function module.load(packer)
  packer.use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    config = function()
      require'cmp'.setup{
        vim.cmd [[set completeopt=menu,menuone,noselect]]
          snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
              vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
              -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
              -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
              -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
            end,
          },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
            { name = 'buffer' }}
          }),
        -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline('/', {
          sources = {
            { name = 'buffer' }
          }
        })

          -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
          cmp.setup.cmdline(':', {
            sources = cmp.config.sources({
              { name = 'path' }
            }, {
                { name = 'cmdline' }
              })
          })

        -- Setup lspconfig.
     -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
      --  capabilities = capabilities
      --}
    end,
  }
end

return module
