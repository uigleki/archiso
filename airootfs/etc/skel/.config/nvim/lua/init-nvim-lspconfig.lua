return {
   'neovim/nvim-lspconfig',
   config = function()
      local servers = {
         'bashls',
         'pylsp',
      }
      for i, server in ipairs(servers) do
         require('lspconfig')[server].setup{}
      end
   end
}
