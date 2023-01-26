local keymaps = {}

keymaps['n'] = {                -- 普通模式
   ['<home>'] = '<esc>',
}

keymaps['i'] = {                -- 插入模式
   ['<home>'] = '<esc>',
}

keymaps['c'] = {                -- 命令模式
   ['<home>'] = '<esc>',
}

local function load_keymaps()
   vim.g.mapleader = ' '        -- 空格键作为 leader 键

   for mode, mode_map in pairs(keymaps) do
      for key, value in pairs(mode_map) do
         vim.api.nvim_set_keymap(mode, key, value, {noremap = true, silent = true})
      end
   end
end

load_keymaps()
