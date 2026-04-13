return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  opts = {
    render_modes = { 'n', 'c', 't' },
    max_file_size = 10.0,
    debounce = 100,
  },
}
