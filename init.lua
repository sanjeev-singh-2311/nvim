vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 0 -- who even needs a statusline lmao
vim.o.winborder = 'rounded'
vim.o.shiftwidth = 4
vim.g.mapleader = ' '
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.g.localleader = '\\'
vim.o.clipboard = 'unnamed,unnamedplus'

-- common keybindings
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<C-w>', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<C-q>', ':q!<CR>')
vim.keymap.set('n', '<leader>c', ':bd<CR>')
vim.keymap.set('n', '<C-c>', ':bd!<CR>')

-- require lazy along with all the packages
require 'config.lazy'

-- the config that comes after all plugins are installed
vim.cmd 'colorscheme kanagawa'

-- package specific keybindings
vim.keymap.set('n', '<leader>e', ':Oil<CR>')
vim.keymap.set('n', '<leader>uT', ':TransparentToggle<CR>')

-- treesitter fold
require('config.folds').setup()

-- user specific config
-- put in the gitignored file `./lua/config/user_config.lua`
-- make sure it is at the bottom to override any init.lua configs
require('config.user_config').setup()
