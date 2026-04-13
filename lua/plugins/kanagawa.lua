local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/rebelot/kanagawa.nvim' },
  }
  local kanagawa = require 'kanagawa'
  vim.cmd.colorscheme 'kanagawa'
  return kanagawa
end

return M
