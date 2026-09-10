return {
  {
    "monaqa/dial.nvim",
    keys = {
      -- Normal mode (普通递增/递减)
      {
        "<C-a>",
        function()
          require("dial.map").manipulate("increment", "normal")
        end,
        mode = "n",
        desc = "Increment",
      },
      {
        "<C-x>",
        function()
          require("dial.map").manipulate("decrement", "normal")
        end,
        mode = "n",
        desc = "Decrement",
      },

      -- Normal mode (累加递增/递减)
      {
        "g<C-a>",
        function()
          require("dial.map").manipulate("increment", "gnormal")
        end,
        mode = "n",
        desc = "Additive increment",
      },
      {
        "g<C-x>",
        function()
          require("dial.map").manipulate("decrement", "gnormal")
        end,
        mode = "n",
        desc = "Additive decrement",
      },

      -- Visual mode (普通递增/递减)
      {
        "<C-a>",
        function()
          require("dial.map").manipulate("increment", "visual")
        end,
        mode = "x",
        desc = "Increment",
      },
      {
        "<C-x>",
        function()
          require("dial.map").manipulate("decrement", "visual")
        end,
        mode = "x",
        desc = "Decrement",
      },

      -- Visual mode (序列递增/递减)
      {
        "g<C-a>",
        function()
          require("dial.map").manipulate("increment", "gvisual")
        end,
        mode = "x",
        desc = "Sequential increment",
      },
      {
        "g<C-x>",
        function()
          require("dial.map").manipulate("decrement", "gvisual")
        end,
        mode = "x",
        desc = "Sequential decrement",
      },
    },
    config = function()
      local augend = require "dial.augend"
      require("dial.config").augends:register_group {
        -- default augends used when no group name is specified
        default = {
          augend.integer.alias.decimal, -- 十进制数字 (1, 2, 3...)
          augend.integer.alias.hex, -- 十六进制数字 (0x00, 0xff...)
          augend.constant.alias.bool, -- 布尔值 (true <-> false)
          augend.constant.alias.Bool, -- 布尔值 (True <-> False)
          augend.semver.alias.semver, -- 语义化版本号 (1.0.0)
          augend.date.alias["%Y/%m/%d"], -- 日期格式 (2026/08/10)
          augend.date.alias["%Y-%m-%d"], -- 日期格式 (2026-08-10)
          augend.case.new {
            types = { "camelCase", "snake_case", "PascalCase", "SCREAMING_SNAKE_CASE" },
            cyclic = true,
          },
        },
      }
    end,
  },
}
