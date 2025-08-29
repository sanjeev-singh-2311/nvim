return {
    {
	"neovim/nvim-lspconfig"
    },
    {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',

	opts = {
	    keymap = {
		preset = 'none',

		['<S-Tab>'] = { 'select_prev', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
		['<C-p>'] = { 'select_prev', 'fallback' },
		['<C-n>'] = { 'select_next', 'fallback' },
		['<M-k>'] = { 'select_prev', 'fallback' },
		['<M-j>'] = { 'select_next', 'fallback' },

		['<Up>'] = { 'scroll_documentation_up', 'fallback' },
		['<Down>'] = { 'scroll_documentation_down', 'fallback' },

		['<M-q>'] = { 'cancel', 'fallback' },
		['<CR>'] = { 'accept', 'fallback' },
		['<M-s>'] = { 'show_and_insert', 'show_documentation', 'hide_documentation' },
		['<C-e>'] = { 'hide', 'fallback' },
	    },

	    appearance = {
		nerd_font_variant = 'mono'
	    },

	    completion = {
		documentation = {
		    auto_show = true,
		    auto_show_delay_ms = 500
		},
	    },

	    sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	    },

	    fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" }
    }
}
