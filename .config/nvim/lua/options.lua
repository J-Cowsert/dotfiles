require "nvchad.options"

-- Explicitly enable system clipboard integration
vim.opt.clipboard = "unnamedplus"

-- add yours here!
vim.o.number = true
--vim.o.relativenumber = true

vim.schedule(function()
    vim.o.relativenumber = true
end)

vim.opt.expandtab = true
vim.o.tabstop = 4         
vim.o.shiftwidth = 4      
vim.o.softtabstop = 4
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!


vim.opt.swapfile = false
