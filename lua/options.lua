require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local o = vim.opt

o.relativenumber = true
o.clipboard = {}

o.list = true
o.listchars = {
  tab = "» ", -- 制表符 (Tab)，通常显示为右箭头
  trail = "·", -- 行尾多余的尾随空格，显示为中点（非常有助于发现多余空格）
  nbsp = "⍽", -- 不间断空格 (Non-breaking space)
  extends = "⟩", -- 当开启 nowrap 时，右侧内容超出屏幕的提示符
  precedes = "⟨", -- 当开启 nowrap 时，左侧内容超出屏幕的提示符
  -- space = "⋅", -- 普通空格。通常建议注释掉，否则满屏幕都是点，会显得杂乱
  -- eol = "↵",   -- 换行符。同样建议注释掉，保持代码界面整洁
}

vim.g.no_plugin_maps = true
