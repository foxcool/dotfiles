-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Soft wrap
vim.opt.wrap = true
vim.opt.linebreak = true

-- Line numbers (отключение относительной нумерации)
vim.opt.relativenumber = false
vim.opt.number = true

-- Link unnamed register to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Use OSC 52 clipboard over SSH (no system clipboard available on headless servers)
if vim.env.SSH_TTY ~= nil then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end
