local _M = {}

--- @param cs ColorScheme
_M.setup = function (cs)
  return {
    Offset                                = {},
    BufferLineFill                        = { bg = cs.sidebar.background },
    BufferLineBufferSelected              = { bg = cs.editor.background, fg = cs.tab.selectedFg },
    BufferLineBackground                  = { bg = cs.tab.background, fg = cs.tab.foreground },
    BufferLineBufferVisible               = { bg = cs.tab.inactive, fg = cs.tab.foreground },

    -- Duplicate
    BufferLineDuplicateSelected           = { bg = cs.tab.selected },
    BufferLineDuplicate                   = { bg = cs.tab.background },
    BufferLineDuplicateVisible            = { bg = cs.tab.inactive },

    -- CloseButton
    BufferLineCloseButtonSelected         = { bg = cs.tab.selected },
    BufferLineCloseButton                 = { bg = cs.tab.background },
    BufferLineCloseButtonVisible          = { bg = cs.tab.inactive },

    -- Icon
    BufferLineIconSelected                = { bg = cs.tab.selected },

    -- Separator
    BufferLineSeparatorSelected           = { bg = cs.tab.selected, fg = cs.sidebar.background },
    BufferLineSeparator                   = { bg = cs.tab.background, fg = cs.sidebar.background },
    BufferLineSeparatorVisible            = { bg = cs.tab.inactive, fg = cs.sidebar.background },

    -- -- Modified
    BufferLineModifiedSelected            = { bg = cs.tab.selected, fg = cs.base.orange },
    BufferLineModified                    = { bg = cs.tab.background, fg = cs.base.orange },
    BufferLineModifiedVisible             = { bg = cs.tab.inactive, fg = cs.base.orange },

    -- -- Warning
    BufferLineWarningSelected             = { bg = cs.tab.selected, fg = cs.base.orange },
    BufferLineWarning                     = { bg = cs.tab.background, fg = cs.base.orange },
    BufferLineWarningVisible              = { bg = cs.tab.inactive, fg = cs.base.orange },

    -- Warning count
    BufferLineWarningDiagnosticSelected   = { bg = cs.tab.selected, fg = cs.base.orange },
    BufferLineWarningDiagnostic           = { bg = cs.tab.background, fg = cs.base.orange },
    BufferLineWarningDiagnosticVisible    = { bg = cs.tab.inactive, fg = cs.base.orange },

    -- Error
    BufferLineErrorSelected               = { bg = cs.tab.selected, fg = cs.base.red },
    BufferLineError                       = { bg = cs.tab.background, fg = cs.base.red },
    BufferLineErrorVisible                = { bg = cs.tab.inactive, fg = cs.base.red },

    -- Error count
    BufferLineErrorDiagnosticSelected     = { bg = cs.tab.selected, fg = cs.base.red },
    BufferLineErrorDiagnostic             = { bg = cs.tab.background, fg = cs.base.red },
    BufferLineErrorDiagnosticVisible      = { bg = cs.tab.inactive, fg = cs.base.red },

    -- Info
    BufferLineInfoSelected                = { bg = cs.tab.selected, fg = cs.base.blue },
    BufferLineInfo                        = { bg = cs.tab.background, fg = cs.base.blue },
    BufferLineInfoVisible                 = { bg = cs.tab.inactive, fg = cs.base.blue },

    -- Info count
    BufferLineInfoDiagnosticSelected      = { bg = cs.tab.selected, fg = cs.base.blue },
    BufferLineInfoDiagnostic              = { bg = cs.tab.background, fg = cs.base.blue },
    BufferLineInfoDiagnosticVisible       = { bg = cs.tab.inactive, fg = cs.base.blue },

    -- Hint
    BufferLineHintSelected                = { bg = cs.tab.selected, fg = cs.base.aqua },
    BufferLineHint                        = { bg = cs.tab.background, fg = cs.base.aqua },
    BufferLineHintVisible                 = { bg = cs.tab.inactive, fg = cs.base.aqua },

    -- Hint count
    BufferLineHintDiagnosticSelected      = { bg = cs.tab.selected, fg = cs.base.aqua },
    BufferLineHintDiagnostic              = { bg = cs.tab.background, fg = cs.base.aqua },
    BufferLineHintDiagnosticVisible       = { bg = cs.tab.inactive, fg = cs.base.aqua },

    -- Pick
    BufferLinePickSelected                = {},
    BufferLinePick                        = {},
    BufferLinePickVisible                 = {},
    BufferLineTabClose                    = {},

    -- -- Indicator
    BufferLineIndicatorSelected           = {},
    BufferLineIndicator                   = {},
    BufferLineIndicatorVisible            = {},
  }
end

--- @param cs ColorScheme
_M.setup_bufferline_icon = function(cs)
  local icon_ok, webDevicons = pcall(require, "nvim-web-devicons")
  if not icon_ok then return end
  local filename = vim.fn.expand("%:t")
  local ext = vim.fn.expand("%:e")
  local _, icon_name = webDevicons.get_icon(filename, ext, { default = true })
  local _, icon_color = webDevicons.get_icon_color(filename, ext, { default = true })
  if not icon_name then return end
  local iconSkeleton = {
    ["BufferLine" .. icon_name .. "Selected"] = {
      bg = cs.tab.selected,
      fg = icon_color,
    },
    ["BufferLine" .. icon_name] = {
      bg = cs.tab.background,
      fg = icon_color,
    },
    ["BufferLine" .. icon_name .. "Inactive"] = {
      bg = cs.tab.inactive,
      fg = icon_color,
    },
  }
  return iconSkeleton
end

return _M
