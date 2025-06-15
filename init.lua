vim.g.lazyvim_check_order = false
vim.opt.clipboard = "unnamedplus"
vim.g.lazyvim_disable_startup_message = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true

-- init.lua
require("lazy").setup("plugins")
require("plugins.snacks")

