local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/nvim-mini/mini.pick' },
    { src = 'https://github.com/nvim-mini/mini.extra' },
  }

  local pick = require 'mini.pick'
  require('mini.extra').setup()
  pick.setup {
    mappings = {
      move_up = '<M-k>',
      move_down = '<M-j>',
    },
  }

  vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
  vim.keymap.set('n', '<leader>fw', ':Pick grep_live<CR>')
  vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')
  vim.keymap.set('n', '<leader>fr', ':Pick resume<CR>')
  vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')

  vim.ui.select = pick.ui_select
  return pick
end

return M
