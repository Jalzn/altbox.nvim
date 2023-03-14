local _M = {}

--- @param cs ColorScheme
_M.setup = function(cs)
  return {
    DiagnosticError             = { fg = cs.base.red },
    DiagnosticSignError         = { fg = cs.base.red, reverse = false },
    DiagnosticUnderlineError    = { fg = cs.base.red, underline = true },
    DiagnosticWarn              = { fg = cs.base.yellow },
    DiagnosticSignWarn          = { fg = cs.base.yellow, reverse = false },
    DiagnosticUnderlineWarn     = {},
    DiagnosticInfo              = { fg = cs.base.blue },
    DiagnosticSignInfo          = { fg = cs.base.blue, reverse = false },
    DiagnosticUnderlineInfo     = {},
    DiagnosticHint              = { fg = cs.base.aqua },
    DiagnosticSignHint          = { fg = cs.base.aqua, reverse = false },
    DiagnosticUnderlineHint     = {},
    DiagnosticFloatingError     = { fg = cs.base.red },
    DiagnosticFloatingWarn      = { fg = cs.base.orange },
    DiagnosticFloatingInfo      = { fg = cs.base.blue },
    DiagnosticFloatingHint      = { fg = cs.base.blue },
    DiagnosticVirtualTextError  = { fg = cs.base.red },
    DiagnosticVirtualTextWarn   = { fg = cs.base.yellow },
    DiagnosticVirtualTextInfo   = { fg = cs.base.blue },
    DiagnosticVirtualTextHint   = { fg = cs.base.aqua },
    LspReferenceRead            = { fg = cs.base.yellow, bold = true },
    LspReferenceText            = { fg = cs.base.yellow, bold = true },
    LspReferenceWrite           = { fg = cs.base.orange, bold = true },
    LspCodeLens                 = { fg = cs.base.gray },
  }
end

return _M
