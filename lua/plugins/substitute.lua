return {
  {
    "gbprod/substitute.nvim",
    config = true,
    keys = {
      -- ================= 1. 默认替换 (Substitute, 使用默认寄存器) =================
      -- 释义: Go Replace
      {
        "gr",
        function()
          require("substitute").operator()
        end,
        mode = { "n" },
        desc = "Substitute with motion",
      },
      {
        "gr",
        function()
          require("substitute").visual()
        end,
        mode = { "x" },
        desc = "Substitute in visual mode",
      },
      {
        "grr",
        function()
          require("substitute").line()
        end,
        mode = { "n" },
        desc = "Substitute line",
      },
      {
        "gR",
        function()
          require("substitute").eol()
        end,
        mode = { "n" },
        desc = "Substitute to end of line",
      },
      -- ================= 2. 强制使用【系统剪贴板】替换 =================
      {
        "<leader>r",
        function()
          require("substitute").operator { register = "+" }
        end,
        mode = { "n" },
        desc = "Substitute from system clipboard",
      },
      {
        "<leader>r",
        function()
          require("substitute").visual { register = "+" }
        end,
        mode = { "x" },
        desc = "Substitute visual from system clipboard",
      },
      {
        "<leader>rr",
        function()
          require("substitute").line { register = "+" }
        end,
        mode = { "n" },
        desc = "Substitute line from system clipboard",
      },
      {
        "<leader>R",
        function()
          require("substitute").eol { register = "+" }
        end,
        mode = { "n" },
        desc = "Substitute to end of line from system clipboard",
      },

      -- ================= 3. 文本交换 (Exchange) =================
      -- 释义: Change Exchange
      {
        "cx",
        function()
          require("substitute.exchange").operator()
        end,
        mode = { "n" },
        desc = "Exchange with motion",
      },
      {
        "cx",
        function()
          require("substitute.exchange").visual()
        end,
        mode = { "x" },
        desc = "Exchange in visual mode",
      },
      {
        "cxx",
        function()
          require("substitute.exchange").line()
        end,
        mode = { "n" },
        desc = "Exchange line",
      },
      {
        "cxc",
        function()
          require("substitute.exchange").cancel()
        end,
        mode = { "n" },
        desc = "Cancel exchange",
      },
    },
  },
}