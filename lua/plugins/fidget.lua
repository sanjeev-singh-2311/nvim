return {
    "j-hui/fidget.nvim",
    event = { "LspAttach" },
    opts = {
	notification = {
	    view = {
		stack_upwards = true,       -- Display notification items from bottom to top
		icon_separator = " ",       -- Separator between group name and icon
		group_separator = "---",    -- Separator between notification groups
		group_separator_hl =        -- Highlight group used for group separator
		"Comment",
		line_margin = 1,            -- Spaces to pad both sides of each non-empty line
		render_message =            -- How to render notification messages
		function(msg, cnt)
		    return cnt == 1 and msg or string.format("(%dx) %s", cnt, msg)
		end,
	    },
	},
	logger = {
	    level = vim.log.levels.INFO,  -- Minimum logging level
	    max_size = 10000,             -- Maximum log file size, in KB
	    float_precision = 0.01,       -- Limit the number of decimals displayed for floats
	    path =                        -- Where Fidget writes its logs to
	    string.format("%s/fidget.nvim.log", vim.fn.stdpath("cache")),
	},
    },
}
