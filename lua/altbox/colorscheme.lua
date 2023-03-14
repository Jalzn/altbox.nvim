local colors = require("altbox.colors")

--- @class ColorScheme
local _M = {}

_M.base = {
  red     = colors.red,
  green   = colors.green,
  yellow  = colors.yellow,
  blue    = colors.blue,
  purple  = colors.purple,
  aqua    = colors.aqua,
  orange  = colors.orange,
  gray    = colors.gray,
}

_M.editor = {
  background              = colors.bg_2,
  text                    = colors.fg_2,
  lineHighlightBackground = colors.bg_3,
  selectionBackground     = colors.bg_4,
  lineNumber              = { fg = colors.gray, activeFg = colors.orange },
  indent_guide            = { fg = colors.bg_4 },
}

_M.sidebar = {
  background    = colors.bg_0,
  text          = colors.fg_2,
  directory     = colors.green,
  cursor        = colors.bg_3
}

_M.tab = {
  background    = colors.bg_1,
  foreground    = colors.fg_4,
  inactive      = colors.bg_1,
  selected      = colors.bg_2,
  selectedFg    = colors.fg_0,
}

return _M
