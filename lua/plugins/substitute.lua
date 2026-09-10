return {
  {
    "gbprod/substitute.nvim",
    opts = {},
    keys = {
      -- ================= 1. 默认替换 (Substitute, 使用默认寄存器) =================
      -- 释义: Go Replace
      {
        "gs",
        function()
          require("substitute").operator()
        end,
        mode = "n",
        desc = "Substitute with motion",
      },
      {
        "gss",
        function()
          require("substitute").line()
        end,
        mode = "n",
        desc = "Substitute line",
      },
      {
        "gS",
        function()
          require("substitute").eol()
        end,
        mode = "n",
        desc = "Substitute to end of line",
      },
      {
        "gs",
        function()
          require("substitute").visual()
        end,
        mode = "x",
        desc = "Substitute in visual mode",
      },

      -- ================= 2. 文本交换 (Exchange) =================
      -- 释义: Change Exchange
      {
        "cx",
        function()
          require("substitute.exchange").operator()
        end,
        mode = "n",
        desc = "Exchange with motion",
      },
      {
        "cxx",
        function()
          require("substitute.exchange").line()
        end,
        mode = "n",
        desc = "Exchange line",
      },
      {
        "cxc",
        function()
          require("substitute.exchange").cancel()
        end,
        mode = "n",
        desc = "Cancel exchange",
      },
      {
        "cx",
        function()
          require("substitute.exchange").visual()
        end,
        mode = "x",
        desc = "Exchange in visual mode",
      },
    },
  },
}
