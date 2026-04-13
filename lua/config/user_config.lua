local USER_CONFIG = {}
-- local MASON_BIN = vim.fn.stdpath 'data' .. '/mason/bin/'

local function add_vim_to_lua_ls_path()
  vim.lsp.config['lua_ls'] = {
    -- cmd = { MASON_BIN .. 'lua-language-server' },
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  }
end

USER_CONFIG.setup = function()
  add_vim_to_lua_ls_path()
end

-- USER_CONFIG.MINI_FILES_COMMAND = 'MiniFiles'

return USER_CONFIG
