return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "bash",
        "nu",
        "powershell",
        "json",
        "yaml",
        "toml",
        "markdown",
        "javascript",
        "typescript",
        "html",
        "css",
        "go",
        "rust",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    -- 1. 基础选项设置
    opts = {
      select = {
        -- 类似 targets.vim，当光标不在目标对象上时，自动向后查找并选中最近的文本对象
        lookahead = true,
        -- 是否将文本对象前后的空格也包含在内（默认 false）
        include_surrounding_whitespace = false,
        -- 智能选择模式设定：让不同的对象表现出最符合直觉的选中范围
        selection_modes = {
          ["@parameter.outer"] = "v", -- 参数使用字符级选择 (charwise)
          ["@function.outer"] = "V", -- 函数使用整行级选择 (linewise)
        },
      },
      move = {
        -- 将跳转动作加入到 Jumplist，这样你可以用 <C-o> 和 <C-i> 轻松跳回
        set_jumps = true,
      },
    },
    -- 2. 键位映射
    keys = {
      -- [A] 选择 (Select)
      {
        "am",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select around function",
      },
      {
        "im",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Select inside function",
      },

      -- [B] 跳转 (Move) - 在函数之间快速移动
      {
        "]m",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Go to next start of function",
      },
      {
        "]M",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Go to next end of function",
      },
      {
        "[m",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Go to previous start of function",
      },
      {
        "[M",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects")
        end,
        mode = { "n", "x", "o" },
        desc = "Go to previous end of function",
      },

      -- [C] 参数交换 (Swap) - 重构利器
      {
        "<leader>a",
        function()
          require("nvim-treesitter-textobjects.swap").swap_next "@parameter.inner"
        end,
        mode = { "n" },
        desc = "Swap argument with next",
      },
      {
        "<leader>A",
        function()
          require("nvim-treesitter-textobjects.swap").swap_previous "@parameter.inner"
        end,
        mode = { "n" },
        desc = "Swap argument with previous",
      },

      -- [D] 增强重复跳转 (Repeatable Move)
      -- 让你在使用 `]m` 跳转后，可以按 `;` 继续向下跳，按 `,` 向上跳
      -- {
      --   ";",
      --   function()
      --     require("nvim-treesitter-textobjects.repeatable_move").repeat_last_move_next()
      --   end,
      --   mode = { "n", "x", "o" },
      --   desc = "Repeat last move forward",
      -- },
      -- {
      --   ",",
      --   function()
      --     require("nvim-treesitter-textobjects.repeatable_move").repeat_last_move_previous()
      --   end,
      --   mode = { "n", "x", "o" },
      --   desc = "Repeat last move backward",
      -- },
    },
  },
}
