vim.o.number = true
vim.o.relativenumber = true
vim.o.winborder = "rounded"
vim.o.shiftwidth = 4
vim.g.mapleader = " "
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.g.localleader = "\\"
vim.o.clipboard = "unnamed,unnamedplus"

-- common keybindings
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<C-w>", ":wa<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<C-q>", ":q!<CR>")
vim.keymap.set("n", "<leader>c", ":bd<CR>")
vim.keymap.set("n", "<C-c>", ":bd!<CR>")

-- require lazy along with all the packages
require("config.lazy")

-- the config that comes after all plugins are installed
vim.cmd("colorscheme kanagawa")

-- package specific keybindings
vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fw", ":Pick grep_live<CR>")
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>")
vim.keymap.set("n", "<leader>fr", ":Pick resume<CR>")
vim.keymap.set("n", "<leader>fb", ":Pick buffers<CR>")
vim.keymap.set("n", "<leader>uT", ":TransparentToggle<CR>")
vim.keymap.set("n", "<C-S>", ":LspInfo<CR>", { silent = true })

-- lsp setup
-- Create a file named `installed_lsp_servers.lua` in lua/config directory and put all
-- your locally installed lsps there in a table format like
-- ```
-- return { "lua_ls", "clangd", "pyright" }
-- ```
-- the file is listed in gitignore
local installed_lsps = require("config.installed_lsp_servers")
vim.lsp.enable(installed_lsps)
vim.diagnostic.config({
	virtual_lines = {
		current_line = true,
	},
})
-- treesitter fold
require("config.folds").setup()

-- lsp keymaps
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gl", vim.diagnostic.open_float)

-- user specific config
-- put in the gitignored file `./lua/config/user_config.lua`
-- make sure it is at the bottom to override any init.lua configs
require("config.user_config").setup()
