local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/neovim/nvim-lspconfig', name = 'lspconfig' },
    { src = 'https://github.com/Saghen/blink.cmp' },
    { src = 'https://github.com/sar/friendly-snippets.nvim' },
  }

  local installed_lsps = require 'config.installed_lsp_servers'
  vim.lsp.enable(installed_lsps)
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('setup-lsp-attach-thingies', { clear = true }),
    callback = function(event)
      vim.diagnostic.config {
        virtual_lines = {
          current_line = true,
        },
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
          },
        },
        virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic)
            local diagnostic_message = {
              [vim.diagnostic.severity.ERROR] = 'ERR: ' .. diagnostic.message,
              [vim.diagnostic.severity.WARN] = 'WARN: ' .. diagnostic.message,
              [vim.diagnostic.severity.INFO] = 'INFO: ' .. diagnostic.message,
              [vim.diagnostic.severity.HINT] = 'HINT: ' .. diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
          end,
        },
      }
      -- lsp keymaps
      vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format)
      vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename)
      vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
      vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
    end,
  })

  local blink = require('blink.cmp').setup {
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
      nerd_font_variant = 'mono',
    },

    completion = {
      menu = { enabled = true },
      list = {
        selection = { preselect = false },
        cycle = { from_top = true },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = 'prefer_rust_with_warning' },
  }
  -- require("friendly-snippets").setup()
  return blink
end

return M
