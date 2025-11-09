require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", }

local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--header-insertion=never",
    "--completion-style=detailed",
    "--clang-tidy",
    "--background-index",
    "--compile-commands-dir=.",  -- look in current project root
  },
  init_options = {
    clangdFileStatus = true, -- optional: shows file processing status
  }
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
