local _M = {}

--- @param cs ColorScheme
_M.setup = function (cs)
  return {
    IndentBlanklineChar = { fg = cs.editor.indent_guide.fg },
  }
end

return _M
