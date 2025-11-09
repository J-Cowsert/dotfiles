require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "\\", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<F4>", "<cmd>ClangdSwitchSourceHeader<CR>", { desc = "Switch between .h & .cpp" })


vim.keymap.del("n", "<Tab>")
