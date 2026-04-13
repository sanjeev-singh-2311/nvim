local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/windwp/nvim-autopairs', name = 'autopairs' },
  }
  local autopairs = require 'nvim-autopairs'
  autopairs.setup()
  return autopairs
end

return M
