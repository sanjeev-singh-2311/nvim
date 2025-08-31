-- add this stuff in your lua/config/user_config.lua
-- local USER_CONFIG.setup = function ()
--     ... any other user config ...
--     vim.api.nvim_create_user_command("MiniFiles", function()
-- 	require("mini.files").open(".")
--     end, { desc = "Open MiniFiles in current directory" })
--     vim.keymap.set("n", "<leader>z", ":MiniFiles<CR>")
-- end
--
-- USER_CONFIG.MINI_FILES_COMMAND = "MiniFiles"

local ok, config = pcall(require, "config.user_config")
local COMMAND = (ok and config.MINI_FILES_COMMAND) or ""

local M = {
    'nvim-mini/mini.files',
    version = '*'
}

if COMMAND ~= "" then
    M.cmd = { COMMAND }
end

return M
