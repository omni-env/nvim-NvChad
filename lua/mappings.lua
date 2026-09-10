require "nvchad.mappings"

-- add yours here

-- 导入键映射函数
local kmap = require("utils").kmap

-- kmap({'n', 'v'}, ';', ':', { desc = 'CMD enter command mode' })
kmap("i", "jj", "<ESC>", { desc = "Exit insert mode" })
kmap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- 复制到行尾，与 C 和 D 保持统一
kmap("n", "Y", "y$", { desc = "Yank to end of line" })

-- 将 <Leader>y 映射为复制到系统剪贴板
kmap({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
kmap("n", "<leader>Y", '"+y$', { desc = "Yank to end of line to system clipboard" })
kmap("n", "<leader>yy", '"+yy', { desc = "Yank line to system clipboard" })
-- 将 <Leader>p 映射为从系统剪贴板粘贴
kmap({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
kmap({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste from system clipboard" })
-- 将 <Leader>o 映射为从系统剪贴板粘贴（到新行里）
kmap("n", "<leader>o", ":put +<CR>", { desc = "Paste clipboard below (as new line)" })
kmap("n", "<leader>O", ":put! +<CR>", { desc = "Paste clipboard above (as new line)" })

-- 按 Shift+Insert 粘贴系统剪贴板内容
kmap({ "n", "v" }, "<S-Insert>", '"+p', { desc = "Paste from system clipboard" })
kmap({ "i", "c" }, "<S-Insert>", "<C-r>+", { desc = "Paste from system clipboard" })

-- 额外文本对象映射
kmap("o", "w", "iw", { remap = true, desc = "Inner word" })
kmap("o", "q", "iq", { remap = true, desc = "Inner quote" })
kmap("o", "b", "ib", { remap = true, desc = "Inner bracket" })
kmap("o", "f", "if", { remap = true, desc = "Inner function call" })
kmap("o", "t", "it", { remap = true, desc = "Inner tag" })
