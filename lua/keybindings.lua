-- local variables
local keyset = vim.keymap.set
vim.g.mapleader = " "

-- File Tree keymap
keyset("n", "<leader>pv", vim.cmd.Ex)

-- TMUX Navigator Keymapings
keyset("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
keyset("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
keyset("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
keyset("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- NeoTree Keymappings
keyset("n", "<C-t>", "<cmd>Neotree<cr>", {noremap = true})
