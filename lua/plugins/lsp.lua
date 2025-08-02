return {
    -- nvim-lspconfig
    {
	"neovim/nvim-lspconfig"
    },
    
    {
	"hrsh7th/nvim-cmp",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-vsnip",
	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "hrsh7th/cmp-cmdline",
	    "hrsh7th/vim-vsnip",
	    "onsails/lspkind.nvim"
	},
	opts = function()
	    local cmp = require("cmp")
	    return {
		snippet = {
		    expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vim-vsnip`
		    end,
		},
		mapping = cmp.mapping.preset.insert({
		    ["<C-Space>"] = cmp.mapping.complete(),      -- Trigger completion
		    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
		    ["<Tab>"] = cmp.mapping.select_next_item(),  -- Navigate completions
		    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
		}),
		sources = cmp.config.sources({
		    { name = "nvim_lsp" }, -- LSP completions
		    { name = "vsnip" }, -- Snippets
		    { name = "buffer" }, -- Current buffer words
		    { name = "path" }, -- hopefully paths work after this
		}),
	    }
	end,
    }

}
