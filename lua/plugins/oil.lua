return {
  'stevearc/oil.nvim',
  dependencies = {
    { 'echasnovski/mini.icons', opts = {} },
  },
  opts = {
    keymaps = {
      ['H'] = { 'actions.toggle_hidden', mode = 'n' },
    },
  },
}
