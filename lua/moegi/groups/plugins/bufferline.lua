-- bufferline integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    BufferLineFill = { bg = c.bg_dark },
    BufferLineBackground = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    BufferLineBuffer = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    BufferLineBufferVisible = { fg = c.fg, bg = c.bg_tab_inactive },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg_tab_active, bold = true },
    BufferLineTab = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    BufferLineTabSelected = { fg = c.bg, bg = c.secondary, bold = true },
    BufferLineTabClose = { fg = c.error, bg = c.bg_dark },
    BufferLineCloseButton = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    BufferLineCloseButtonVisible = { fg = c.fg, bg = c.bg_tab_inactive },
    BufferLineCloseButtonSelected = { fg = c.primary, bg = c.bg_tab_active },
    BufferLineIndicatorSelected = { fg = c.primary, bg = c.bg_tab_active },
    BufferLineIndicatorVisible = { fg = c.border, bg = c.bg_tab_inactive },
    BufferLineModified = { fg = c.git_change, bg = c.bg_tab_inactive },
    BufferLineModifiedVisible = { fg = c.git_change, bg = c.bg_tab_inactive },
    BufferLineModifiedSelected = { fg = c.git_add, bg = c.bg_tab_active },
    BufferLineSeparator = { fg = c.bg_dark, bg = c.bg_tab_inactive },
    BufferLineSeparatorVisible = { fg = c.bg_dark, bg = c.bg_tab_inactive },
    BufferLineSeparatorSelected = { fg = c.bg_dark, bg = c.bg_tab_active },
    BufferLineError = { fg = c.error, bg = c.bg_tab_inactive },
    BufferLineWarning = { fg = c.warning, bg = c.bg_tab_inactive },
    BufferLineInfo = { fg = c.info, bg = c.bg_tab_inactive },
  }
end
