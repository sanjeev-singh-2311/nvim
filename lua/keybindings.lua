-- local variables
local keyset = vim.keymap.set

-- File Tree keymap
keyset("n", "<leader>pv", vim.cmd.Ex)

-- TMUX Navigator Keymapings
keyset("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
keyset("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
keyset("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
keyset("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- -- Make <CR> to accept selected completion item or notify coc.nvim to format
-- -- <C-g>u breaks current undo, please make your own choice
-- keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- -- Use <c-j> to trigger snippets
-- keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- -- Use <c-space> to trigger completion
-- keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- -- Use `[g` and `]g` to navigate diagnostics
-- -- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
-- keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
-- keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
