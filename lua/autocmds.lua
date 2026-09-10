require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- 配置复制时闪烁高亮
autocmd("TextYankPost", {
  group = augroup("HighlightYank", { clear = true }),
  callback = function()
    -- on_yank 是内置函数，IncSearch 是高亮组（搜索时的高亮颜色，也可以换成 "Visual"），timeout 是持续时间
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
  end,
})
