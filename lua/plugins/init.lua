return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    lazy = false,
    opts = {
      rocks = { "luautf8" }, -- specifies a list of rocks to install
    },
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "kylechui/nvim-surround",
    version = "^4.0.0",
    event = "VeryLazy",
  },

  {
    "rmagatti/auto-session",
    lazy = false,
    ---enables autocomplete for opts
    ---@module "auto-session"
    opts = {
      suppressed_dirs = { "~/", "C:/", "D:/" },
      log_level = "error",
      auto_session_enable_last_session = true,
    },
  },

  {
    "keaising/im-select.nvim",
    event = "VeryLazy",
    config = function()
      require("im_select").setup {}
    end,
  },
}
