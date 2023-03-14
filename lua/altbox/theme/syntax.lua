local _M = {}

--- @param cs ColorScheme
_M.setup = function (cs)
  return {
    Comment         = { fg = cs.base.gray, italic = true },
    Constant        = { fg = cs.base.purple },
    String          = { fg = cs.base.green },
    Character       = { fg = cs.base.purple },
    Number          = { fg = cs.base.purple },
    Boolean         = { fg = cs.base.purple },
    Float           = { fg = cs.base.purple },
    Identifier      = { fg = cs.base.blue },
    Function        = { fg = cs.base.green, bold = true },
    Statement       = { fg = cs.base.red },
    Conditional     = { fg = cs.base.red },
    Repeat          = { fg = cs.base.red },
    Label           = { fg = cs.base.red },
    Operator        = { fg = cs.base.orange },
    Keyword         = { fg = cs.base.red },
    Exception       = { fg = cs.base.red },
    PreProc         = { fg = cs.base.aqua },
    Include         = { fg = cs.base.aqua },
    Define          = { fg = cs.base.aqua },
    Macro           = { fg = cs.base.aqua },
    PreCondit       = { fg = cs.base.aqua },
    Type            = { fg = cs.base.yellow },
    StorageClass    = { fg = cs.base.orange },
    Structure       = { fg = cs.base.aqua },
    Typedef         = { fg = cs.base.yellow },
    Special         = { fg = cs.base.orange },
    SpecialChar     = {},
    Tag             = {},
    Delimiter       = {},
    SpecialComment  = {},
    Debug           = {},
    Underlined      = { underline = true },
    Bold            = { bold = true },
    Ignore          = {},
    Italic          = { italic = true },
    Error           = { fg = cs.base.red, bold = true },
    Todo            = { bg = cs.editor.background, fg = cs.base.magenta, bold = true },
  }
end

return _M
