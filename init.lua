-- import plugins
require('plugins')

-- import Keybindings
require('keybindings')

-- System Clipboard Integration
vim.opt.clipboard:append("unnamedplus")

-- Numbering and Mouse integration
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'

-- Tabs and Spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smarttab = true
vim.opt.autoindent = true

-- Formatting
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.g.mapleader = " "

-- Colourscheme
vim.cmd('colorscheme catppuccin-mocha')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
