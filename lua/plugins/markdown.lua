local M = {}

M.load = function()
  vim.pack.add {
    { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim' },
  }
  local render_md = require 'render-markdown'
  render_md.setup {
    render_modes = { 'n', 'c', 't' },
    max_file_size = 10.0,
    debounce = 100,
  }
  return render_md
end

return M
