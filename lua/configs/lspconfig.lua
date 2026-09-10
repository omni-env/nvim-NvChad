require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "tsgo",
  "lua_ls",
  "vimls",
  "vimdoc_ls",
  "bashls",
  "nushell",
  "gopls",
  "rust_analyzer",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
