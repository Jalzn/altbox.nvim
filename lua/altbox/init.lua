local cs = require("altbox.colorscheme")

local _M = {}

_M.setup = function ()
  local editor = require("altbox.theme.editor").setup(cs)
  local syntax = require("altbox.theme.syntax").setup(cs)
  local lsp = require("altbox.theme.lsp").setup(cs)

  local treesitter = require("altbox.plugins.treesitter").setup(cs)
  local neotree = require("altbox.plugins.neotree").setup(cs)
  local indent_blackline = require("altbox.plugins.indent_blankline").setup(cs)
  local bufferline = require("altbox.plugins.bufferline").setup(cs)
  local bufferline_icons = require("altbox.plugins.bufferline").setup_bufferline_icon(cs)

  local plugins = {
    editor,
    syntax,
    lsp,
    treesitter,
    neotree,
    indent_blackline,
    bufferline,
    bufferline_icons,
  }

  for _, plugin in pairs(plugins) do
    for key, value in pairs(plugin) do
      vim.api.nvim_set_hl(0, key, value)
    end
  end
end

return _M
