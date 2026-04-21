local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  }

  local ts = require 'nvim-treesitter'
  ts.setup {
    auto_install = true,
  }

  vim.api.nvim_create_autocmd('FileType', {
    callback = function()
      pcall(vim.treesitter.start)
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  })

  return ts
end

return M
