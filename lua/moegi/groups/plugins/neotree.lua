-- neotree integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    NeoTreeNormal = { fg = c.fg, bg = c.bg_dark },
    NeoTreeNormalNC = { fg = c.fg, bg = c.bg_dark },
    NeoTreeWinSeparator = { fg = c.border, bg = c.bg_dark },
    NeoTreeDirectoryName = { fg = c.fg },
    NeoTreeDirectoryIcon = { fg = c.secondary },
    NeoTreeRootName = { fg = c.secondary, bold = true },
    NeoTreeFileName = { fg = c.fg },
    NeoTreeFileNameOpened = { fg = c.fg, bold = true },
    NeoTreeIndentMarker = { fg = c.indent },
    NeoTreeExpander = { fg = c.fg_dim },
    NeoTreeDimText = { fg = c.fg_dim },
    NeoTreeDotfile = { fg = c.fg_dim },
    NeoTreeGitAdded = { fg = c.git_add },
    NeoTreeGitModified = { fg = c.git_change },
    NeoTreeGitDeleted = { fg = c.git_delete },
    NeoTreeGitConflict = { fg = c.git_conflict },
    NeoTreeGitUntracked = { fg = c.git_renamed, italic = true },
    NeoTreeGitIgnored = { fg = c.git_ignored },
    NeoTreeTabActive = { fg = c.fg, bg = c.bg_tab_active, bold = true },
    NeoTreeTabInactive = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    NeoTreeTabSeparatorActive = { fg = c.bg_tab_active, bg = c.bg_tab_active },
    NeoTreeTabSeparatorInactive = { fg = c.bg_dark, bg = c.bg_tab_inactive },
    NeoTreeFloatBorder = { fg = c.border, bg = c.bg_float },
    NeoTreeFloatTitle = { fg = c.secondary, bg = c.bg_float },
    NeoTreeTitleBar = { fg = c.bg, bg = c.secondary },
  }
end
