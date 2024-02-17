return {
	{'neovim/nvim-lspconfig',},
	{'hrsh7th/cmp-nvim-lsp',},
	{'hrsh7th/cmp-buffer',},
	{'hrsh7th/cmp-path',},
	{'hrsh7th/cmp-cmdline',},

	{
		'hrsh7th/nvim-cmp',
		config = function ()
			local cmp = require('cmp')
			local cmp_action = require('lsp-zero').cmp_action()

			cmp.setup({
				mapping = cmp.mapping.preset.insert({
					-- `Enter` key to confirm completion
					['<CR>'] = cmp.mapping.confirm({select = false}),

					-- Ctrl+Space to trigger completion menu
					['<C-Space>'] = cmp.mapping.complete(),

					-- Navigate between snippet placeholder
					['<C-f>'] = cmp_action.luasnip_jump_forward(),
					['<C-b>'] = cmp_action.luasnip_jump_backward(),

					-- Scroll up and down in the completion documentation
					['<C-u>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
				})
			})

		end
	},
}
