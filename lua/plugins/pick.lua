return {
  'echasnovski/mini.pick',
  cmd = { 'Pick' },
  dependencies = {
    'echasnovski/mini.extra',
    opts = {},
  },
  keys = {
    { '<leader>ff', ':Pick files<CR>', mode = { 'n' } },
    { '<leader>fw', ':Pick grep_live<CR>', mode = { 'n' } },
    { '<leader>fh', ':Pick help<CR>', mode = { 'n' } },
    { '<leader>fr', ':Pick resume<CR>', mode = { 'n' } },
    { '<leader>fb', ':Pick buffers<CR>', mode = { 'n' } },
  },
  opts = {
    mappings = {
      move_up = '<M-k>',
      move_down = '<M-j>',
    },
  },
  config = function(_, opts)
    require('mini.pick').setup(opts)
    vim.ui.select = require('mini.pick').ui_select
  end,
}
