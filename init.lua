vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- common keybindings
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<C-w>", "<cmd>wa<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>q!<CR>")
vim.keymap.set("n", "<leader>c", "<cmd>bd<CR>")
vim.keymap.set("n", "<C-c>", "<cmd>bd!<CR>")

-- require lazy along with all the packages
require("config.lazy")

-- the config that comes after all plugins are installed
vim.cmd("colorscheme kanagawa")

-- package specific command
vim.cmd("TransparentDisable")

-- package specific keybindings
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<CR>")
vim.keymap.set("n", "<leader>fw", "<cmd>Pick grep_live<CR>")
vim.keymap.set("n", "<leader>fh", "<cmd>Pick help<CR>")
vim.keymap.set("n", "<leader>fr", "<cmd>Pick resume<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Pick buffers<CR>")
vim.keymap.set("n", "<leader>uT", "<cmd>TransparentToggle<CR>")

-- lsp setup
-- Create a file named `installed_lsp_servers.lua` in lua/ directory and put all 
-- your locally installed lsps there in a table format like 
-- ```
-- return { "lua_ls", "clangd", "pyright" }
-- ```
-- the file is listed in gitignore 
local installed_lsps = require("installed_lsp_servers")
vim.lsp.enable(installed_lsps)
vim.diagnostic.config({
	virtual_lines = {
		current_line = true,
	},
})
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)
