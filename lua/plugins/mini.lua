return {
  {
    "nvim-mini/mini.extra",
    version = false,
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-mini/mini.ai" },
    config = function()
      local extra = require "mini.extra"
      extra.setup()

      require("mini.ai").setup {
        custom_textobjects = {
          B = extra.gen_ai_spec.buffer(),
          L = extra.gen_ai_spec.line(),
          I = extra.gen_ai_spec.indent(),
        },
      }
    end,
  },
}
