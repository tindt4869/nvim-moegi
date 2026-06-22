-- mini integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    MiniIndentscopeSymbol = { fg = c.indent_active },
    MiniIndentscopePrefix = { nocombine = true },
    MiniCursorword = { bg = c.bg_highlight },
    MiniCursorwordCurrent = { bg = c.bg_highlight },
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.secondary, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.info, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.primary, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.warning, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg, bg = s.number, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = s.type, bold = true },
    MiniStatuslineDevinfo = { fg = c.fg_ui, bg = c.bg_highlight },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg_statusline },
    MiniStatuslineFileinfo = { fg = c.fg_ui, bg = c.bg_highlight },
    MiniStatuslineInactive = { fg = c.fg_dim, bg = c.bg_statusline },
    MiniFilesNormal = { fg = c.fg, bg = c.bg_float },
    MiniFilesBorder = { fg = c.border, bg = c.bg_float },
    MiniFilesTitle = { fg = c.fg_dim, bg = c.bg_float },
    MiniFilesTitleFocused = { fg = c.secondary, bg = c.bg_float, bold = true },
    MiniFilesCursorLine = { bg = c.bg_highlight },
    MiniFilesDirectory = { fg = c.secondary },
    MiniFilesFile = { fg = c.fg },
    MiniDiffSignAdd = { fg = c.git_add },
    MiniDiffSignChange = { fg = c.git_change },
    MiniDiffSignDelete = { fg = c.git_delete },
    MiniIconsAzure = { fg = c.info },
    MiniIconsBlue = { fg = c.info },
    MiniIconsCyan = { fg = s.type },
    MiniIconsGreen = { fg = c.git_add },
    MiniIconsGrey = { fg = c.fg },
    MiniIconsOrange = { fg = c.git_conflict },
    MiniIconsPurple = { fg = s.variable },
    MiniIconsRed = { fg = c.error },
    MiniIconsYellow = { fg = c.warning },
  }
end
