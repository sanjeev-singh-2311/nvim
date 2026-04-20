vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 0 -- who even needs a statusline lmao
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

require('vim._core.ui2').enable {
  enable = true, -- Whether to enable or disable the UI.
  msg = { -- Options related to the message module.
    ---@type 'cmd'|'msg' Default message target, either in the
    ---cmdline or in a separate ephemeral message window.
    ---@type string|table<string, 'cmd'|'msg'|'pager'> Default message target
    ---or table mapping |ui-messages| kinds and triggers to a target.
    targets = 'msg',
    cmd = { -- Options related to messages in the cmdline window.
      height = 0.5, -- Maximum height while expanded for messages beyond 'cmdheight'.
    },
    dialog = { -- Options related to dialog window.
      height = 0.5, -- Maximum height.
    },
    msg = { -- Options related to msg window.
      height = 0.5, -- Maximum height.
      timeout = 2000, -- Time a message is visible in the message window.
    },
    pager = { -- Options related to message window.
      height = 1, -- Maximum height.
    },
  },
}

-- common keybindings
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<C-w>', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<C-q>', ':q!<CR>')
vim.keymap.set('n', '<leader>c', ':bd<CR>')
vim.keymap.set('n', '<C-c>', ':bd!<CR>')
vim.keymap.set('n', '<leader>r', ':restart<CR>')

-- load plugins
local kanagawa = require('plugins.kanagawa').load()
local oil_nvim = require('plugins.oil').load()
local autopairs = require('plugins.autopairs').load()
local blink = require('plugins.lsp').load()
local fidget = require('plugins.fidget').load()
local render_md = require('plugins.markdown').load()

-- load user configs at the very end
require('config.user_config').setup()
