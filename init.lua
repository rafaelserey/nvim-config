-- init.lua

-- Configurações básicas
vim.g.lazyvim_check_order = false
vim.opt.clipboard = "unnamedplus"
vim.g.lazyvim_disable_startup_message = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true

-- Bootstrap do lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Carrega os plugins
require("lazy").setup("plugins")
require("plugins.snacks")
