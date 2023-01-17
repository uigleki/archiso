local plugins = {
   require('init-which-key'),      -- 显示按键绑定
   require('init-nvim-autopairs'), -- 括号自动配对
   require('init-gruvbox'),        -- gruvbox 主题
   require('init-nvim-lspconfig'), -- 语言客户端
   require('init-nvim-treesitter'), -- 语法树
   require('init-nvim-cmp'),        -- 插入模式补全
   require('init-orgmode'),         -- org 模式
}

local function load_plugins()
   local fn = vim.fn
   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
   -- 如果 packer 不存在就下载
   if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
   end

   require('packer').startup(function(use)
         use 'wbthomason/packer.nvim' -- packer 自身

         for i, plugin in ipairs(plugins) do
            use(plugin)
         end

         -- 如果刚下载完 packer，则同步以上插件
         if packer_bootstrap then
            require('packer').sync()
         end
                            end)
end

load_plugins()
