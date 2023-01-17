-- org 模式

return {
   'nvim-orgmode/orgmode',
   config = function()
      -- 为 org 文件加载自定义语法树语法
      require('orgmode').setup_ts_grammar()
      -- 下载语法
      require'nvim-treesitter.configs'.setup {
         ensure_installed = {'org'},
                                             }

      require('orgmode').setup {
         -- 日程扫描目录
         org_agenda_files = {'~/org/*'},
         org_default_notes_file = '~/org/todo.org',
                               }

      -- 启用补全
      require'cmp'.setup {
         sources = {
            { name = 'orgmode' }
         }
                         }
   end
}
