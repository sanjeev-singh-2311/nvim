local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-mini/mini.icons' },
  }
  require('mini.icons').setup()
  local oil_nvim = require 'oil'
  oil_nvim.setup()

  -- Keymaps to set after load
  vim.keymap.set('n', '<leader>e', ':Oil<CR>')

  return oil_nvim
end

return M
