return {
  "f-person/auto-dark-mode.nvim",
  event = "VeryLazy",
  opts = {
    update_interval = 3000,
    set_dark_mode = function()
      if vim.o.background ~= "dark" then
        require("base46").toggle_theme()
      end
    end,
    set_light_mode = function()
      if vim.o.background ~= "light" then
        require("base46").toggle_theme()
      end
    end,
  },
}
