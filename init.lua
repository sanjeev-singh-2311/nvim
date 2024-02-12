-- import plugins
-- require('plugins')

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


-- Load Lazy.nvim here
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Add plugins and configs here
require("lazy").setup("plugins")

-- Colourscheme
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

