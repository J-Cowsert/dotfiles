require("nvchad.configs.lspconfig").defaults()

local servers = { "asm_lsp", "clangd" }

local capabilities = require("nvchad.configs.lspconfig").capabilities

vim.lsp.config("clangd", {
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--header-insertion=never",
    "--completion-style=bundled",
    "--clang-tidy",
    "--background-index",
    "--compile-commands-dir=.",  -- look in current project root
  },
  init_options = {
    clangdFileStatus = true, -- optional: shows file processing status
  }
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
