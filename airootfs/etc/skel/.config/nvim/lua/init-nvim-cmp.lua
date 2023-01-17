return {
   'hrsh7th/nvim-cmp',
   requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',

      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'rafamadriz/friendly-snippets',
   },
   config = function ()
      local cmp = require'cmp'
      cmp.setup {
         snippet = {
            expand = function(args)
               vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            end,
         },
         mapping = cmp.mapping.preset.insert({
               -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
               ['<CR>'] = cmp.mapping.confirm({ select = true }),
         }),
         sources = cmp.config.sources({
               { name = 'nvim_lsp' },
               { name = 'vsnip' },
                                      }, {
               { name = 'buffer' },
               { name = 'path' }
         }),
      }
   end
}
