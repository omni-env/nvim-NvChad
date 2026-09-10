return {
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          enabled = false,
          autohide = true,
          multi_line = false,
          highlight = { backdrop = false },
        },
      },
    },
    keys = {
      -- s 交由 rainzm/flash-zh.nvim 插件处理
      -- {
      --   "s",
      --   function()
      --     require("flash").jump()
      --   end,
      --   mode = { "n", "x", "o" },
      --   desc = "Flash",
      -- },
      {
        "S",
        function()
          require("flash").treesitter()
        end,
        mode = { "n", "x", "o" },
        desc = "Flash Treesitter",
      },
      {
        "r",
        function()
          require("flash").remote()
        end,
        mode = "o",
        desc = "Remote Flash",
      },
      {
        "R",
        function()
          require("flash").treesitter_search()
        end,
        mode = { "x", "o" },
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        function()
          require("flash").toggle()
        end,
        mode = { "c" },
        desc = "Toggle Flash Search",
      },
    },
  },
  {
    "rainzm/flash-zh.nvim",
    dependencies = "folke/flash.nvim",
    keys = {
      {
        "s",
        function()
          require("flash-zh").jump {
            chinese_only = false,
          }
        end,
        mode = { "n", "x", "o" },
        desc = "Flash with Chinese support",
      },
    },
  },
}
