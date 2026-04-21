local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  }

  local gitsigns = require 'gitsigns'
  gitsigns.setup {
    attach_to_untracked = true,
  }
  return gitsigns
end

return M
