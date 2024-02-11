-- Load Lazy.nvim here
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Add plugins and configs here
require("lazy").setup(
{
	-- Auto Bracket Pairs
	{'jiangmiao/auto-pairs'},

	-- Vim Airline
	{'vim-airline/vim-airline'},

	-- gcc to comment or uncomment
	{'tpope/vim-commentary'},

	-- Navigator for vim and tmux
	{'christoomey/vim-tmux-navigator'},

	-- Telescope plugin
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{mode = 'n' ,'<leader>ff', '<cmd>Telescope find_files<CR>', desc = "Find Files", noremap = 'true'},
			{mode = 'n', '<leader>fg', '<cmd>Telescope live_grep<CR>', desc = "Live Grep", noremap = 'true'},
			{mode = 'n', '<leader>fb', '<cmd>Telescope buffers<CR>', desc = "Buffers", noremap = 'true'},
			{mode = 'n', '<leader>fh', '<cmd>Telescope help_tags<CR>', desc = "Help Tags", noremap = 'true'},
		}
	},

	-- Catppuccin theme
	{
		'catppuccin/nvim',
		name = 'catppuccin',
	},

	-- -- COC Language Server Plugin
	-- {
	-- 	'neoclide/coc.nvim',
	-- 	branch='release',
	-- },

	-- TreeSitter Plugin
	{
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/playground",
		config = function()
			run = ":TSUpdate"
		end,
	},

	{
		--- Uncomment the two plugins below if you want to manage the language servers from neovim
		{'williamboman/mason.nvim',
			config = function()
				require("mason").setup()
			end,
		},
		{'williamboman/mason-lspconfig.nvim',
			config = function()
				require("mason-lspconfig").setup()
			end,
		},

		{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
		{'neovim/nvim-lspconfig'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},
	};

}
)

require("treesitter")
require("lsp")
