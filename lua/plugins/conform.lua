return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      format_on_save = true,
      formatters_by_ft = {
        lua = { "stylua" },
      },
    },
    keys = {
      {
        "<leader>cf",
        mode = { "n", "v", "i" },
        function()
          require("conform").format {
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
          }
        end,
        desc = "Format code",
      },
    },
  },
}
