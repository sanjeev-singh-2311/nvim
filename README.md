# Neovim Config (catchy title here)
---

I haven't pushed the part of config that I change a lot to prevent git from giving me a headache

Basically the config expects you to add two files on your own
```lua
-- lua/config/installed_lsp_servers.lua

return {
    --- add or remove whatever 
    'lua_ls',
    'clangd',
    'pyright',
    'rust_analyzer',
    'gopls',
    'elixir_ls',
    'glsl_analyzer',
    'ts_ls',
    'hls',
}
```

```lua
--- lua/config/user_config.lua

local USER_CONFIG = {}

local MASON_BIN = vim.fn.stdpath 'data' .. '/mason/bin/'

local function setup_elixir_ls()
  vim.lsp.config['elixir_ls'] = {
    -- Usually I try not to use mason but if you want to force Mason instead of your system binary
    -- then it can be done by concatenation with `MASON_BIN`
    cmd = { MASON_BIN .. 'elixir-ls' },
    filetypes = { 'elixir' },
  }
end

USER_CONFIG.setup = function()
    -- Add any configuration here
    vim.cmd 'TransparentEnable' -- Comment out to make transparent by default
    add_vim_to_lua_ls_path()
    setup_elixir_ls()
    setup_glsl_analyzer()
end

USER_CONFIG.MINI_FILES_COMMAND = 'MiniFiles' -- or any custom command you want to invoke to call mini.files

return USER_CONFIG
```

If the Gods are not against me, this should work find from there
