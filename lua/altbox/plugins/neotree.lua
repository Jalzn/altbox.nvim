local _M = {}

--- @param cs ColorScheme
_M.setup = function(cs)
  return {
    NeoTreeNormal               = { bg = cs.sidebar.background },
    NeoTreeNormalNC             = { bg = cs.sidebar.background },
    NeoTreeEndOfBuffer          = { fg = cs.sidebar.background },
    NeoTreeSignColumn           = { bg = cs.sidebar.background, fg = cs.sidebar.text },
    NeoTreeStatusLine           = { bg = cs.sidebar.background, fg = cs.sidebar.background },
    NeoTreeCursor               = { bg = cs.sidebar.cursor },
    NeoTreeCursorLine           = { bg = cs.sidebar.cursor, bold = true },
    NeoTreeCursorLineSign       = { bg = cs.sidebar.cursor, bold = true },
    NeoTreeWinSeparator         = { bg = cs.editor.background, fg = cs.editor.background },
    NeoTreeRootName             = { fg = cs.sidebar.text, bold = true },
    NeoTreeDirectoryIcon        = { fg = cs.sidebar.directory },
    NeoTreeDirectoryName        = { fg = cs.sidebar.directory },
    NeoTreeGitAdded             = { fg = cs.base.green },
    NeoTreeGitConflict          = {},
    NeoTreeGitDeleted           = { fg = cs.base.red },
    NeoTreeGitIgnored           = { fg = cs.base.gray },
    NeoTreeGitModified          = { fg = cs.base.orange },
    NeoTreeGitStaged            = {},
    NeoTreeGitRenamed           = { fg = cs.base.orange },
    NeoTreeGitUntracked         = { fg = cs.base.orange },
    NeoTreeIndentMarker         = { fg = cs.base.gray },
    NeoTreeExpander             = { link = "NeoTreeDirectoryIcon" },
    NeoTreeFloatNormal          = {},
    NeoTreeFloatBorder          = {},
    NeoTreeTitleBar             = {},
    NeoTreeFloatTitle           = {},
    NeoTreeTabActive            = {},
    NeoTreeTabInactive          = {},
    NeoTreeTabSeparatorActive   = {},
    NeoTreeTabSeparatorInactive = {},
  }
end

return _M
