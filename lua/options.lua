require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.relativenumber = true -- 相对行号
vim.opt.clipboard = {} --  禁用系统剪切板同步
vim.opt.foldlevelstart = 99 -- 文件打开时默认不折叠

-- 优先使用 unix，其次支持 dos 和 macunix
vim.opt.fileformats = "unix,dos,mac"

vim.opt.list = true
vim.opt.listchars = {
  tab = "» ", -- 制表符 (Tab)，通常显示为右箭头
  trail = "·", -- 行尾多余的尾随空格，显示为中点（非常有助于发现多余空格）
  nbsp = "⍽", -- 不间断空格 (Non-breaking space)
  extends = "⟩", -- 当开启 nowrap 时，右侧内容超出屏幕的提示符
  precedes = "⟨", -- 当开启 nowrap 时，左侧内容超出屏幕的提示符
  -- space = "⋅", -- 普通空格。通常建议注释掉，否则满屏幕都是点，会显得杂乱
  -- eol = "↵",   -- 换行符。同样建议注释掉，保持代码界面整洁
}

-- ===================================================================
-- 全局默认缩进配置（默认 4 个空格）
-- ===================================================================
vim.opt.expandtab = true -- 将 Tab 键转换为空格
vim.opt.shiftwidth = 4 -- 每一级自动缩进的长度
vim.opt.tabstop = 4 -- 文件中的 Tab 字符在屏幕上显示的宽度
vim.opt.softtabstop = 4 -- 插入模式下，按 Tab 或 Backspace 时增删的空格数量

-- ===================================================================
-- 特定语言覆盖规则（指定文件类型改为 2 个空格）
-- ===================================================================
vim.api.nvim_create_autocmd("FileType", {
  -- 创建专属 augroup，防止配置文件重复 source 时产生多重绑定
  group = vim.api.nvim_create_augroup("IndentOverrides", { clear = true }),
  -- 指定需要覆写为 2 个空格的文件类型
  pattern = {
    "lua",
    "vim",
    "javascript",
    "typescript",
    "html",
    "css",
  },
  callback = function()
    -- 必须使用 opt_local，确保修改仅作用于当前 buffer，避免污染全局默认值
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})
