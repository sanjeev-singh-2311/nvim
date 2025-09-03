-- add this stuff in your lua/config/user_config.lua
-- `USER_CONFIG.MINI_FILES_COMMAND = "MiniFiles"`

local ok, config = pcall(require, 'config.user_config')
local COMMAND = (ok and config.MINI_FILES_COMMAND) or ''

local M = {
  'nvim-mini/mini.files',
  version = '*',
}

if COMMAND ~= '' then
  M.cmd = { COMMAND }

  M.config = function()
    vim.api.nvim_create_user_command(COMMAND, function()
      require('mini.files').open '.'
    end, { desc = 'Open MiniFiles in current directory' })
  end
  M.keys = {
    {
      '<leader>z',
      ':' .. COMMAND .. '<CR>',
      desc = 'Open MiniFiles in current directory',
    },
  }
end

return M
