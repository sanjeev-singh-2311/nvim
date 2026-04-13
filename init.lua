vim.o.number = true
vim.o.relativenumber = true
-- vim.o.laststatus = 0 -- who even needs a statusline lmao
vim.o.winborder = 'rounded'
vim.o.shiftwidth = 4
vim.o.smartindent = false
vim.o.expandtab = false
vim.g.mapleader = ' '
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.g.localleader = '\\'
vim.o.clipboard = 'unnamed,unnamedplus'
vim.o.tabstop = 2
-- Preserve undo after closing file
vim.opt.undodir = vim.fn.stdpath 'state' .. '/undo'
vim.opt.undofile = true

-- common keybindings
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<C-w>', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<C-q>', ':q!<CR>')
vim.keymap.set('n', '<leader>c', ':bd<CR>')
vim.keymap.set('n', '<C-c>', ':bd!<CR>')
vim.keymap.set('n', '<leader>r', ':restart<CR>')

local kanagawa = require('plugins.kanagawa').load()
local oil_nvim = require('plugins.oil').load()
