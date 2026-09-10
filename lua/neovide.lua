local g = vim.g

-- 边距
g.neovide_padding_top = 8
g.neovide_padding_left = 8
g.neovide_padding_right = 8
g.neovide_padding_bottom = 0

-- 半透明毛玻璃（需操作系统开启透明/模糊支持）
g.neovide_opacity = 0.95
g.neovide_normal_opacity = 0.95 -- 透明度设为95%，既有质感又不影响阅读代码
g.neovide_window_blurred = true -- 开启底层操作系统的背景高斯模糊

-- 光标粒子特效（VFX）
-- "railgun"（电磁炮）会在光标移动时产生极具科技感的蓝色/紫色粒子拖尾
g.neovide_cursor_vfx_mode = "railgun"

-- 沉浸式打字体验
g.neovide_hide_mouse_when_typing = true -- 打字时自动隐藏鼠标指针，防遮挡
