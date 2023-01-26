local options = {
   cursorline = true,           -- 高亮当前行
   expandtab = true,            -- 使用空格代替制表符
   shiftwidth = 4,              -- tab 宽度
   ignorecase = true,           -- 搜索忽略大小写
   smartcase = true,            -- 智能匹配搜索大小写
   mouse = 'a',                 -- 启用鼠标
   number = true,               -- 显示行号
   relativenumber = true,       -- 显示相对行号
   scrolloff = 2,               -- 移动时光标上下保留2行
   sidescrolloff = 5,           -- 移动时光标左右保留5列
   smartindent = true,          -- 自动缩进
   swapfile = false,            -- 不创建交换文件
   undofile = true,             -- 允许撤销操作
   wrap = false,                -- 取消折行
}

local function load_options()
   for key, value in pairs(options) do
      vim.o[key] = value
   end
end

load_options()
