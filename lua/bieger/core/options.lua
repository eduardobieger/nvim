local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true

-- tabs and identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- appearance
opt.termguicolors = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- leader key config
vim.g.mapleader = " "
opt.timeoutlen = 2000
