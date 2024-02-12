-- Telescope plugin
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{mode = 'n' ,'<leader>ff', '<cmd>Telescope find_files<CR>', desc = "Find Files", noremap = 'true'},
		{mode = 'n', '<leader>fg', '<cmd>Telescope live_grep<CR>', desc = "Live Grep", noremap = 'true'},
		{mode = 'n', '<leader>fb', '<cmd>Telescope buffers<CR>', desc = "Buffers", noremap = 'true'},
		{mode = 'n', '<leader>fh', '<cmd>Telescope help_tags<CR>', desc = "Help Tags", noremap = 'true'},
	}
}
