-- nvimtree integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    NvimTreeNormal = { fg = c.fg, bg = c.bg_dark },
    NvimTreeNormalNC = { fg = c.fg, bg = c.bg_dark },
    NvimTreeWinSeparator = { fg = c.border, bg = c.bg_dark },
    NvimTreeRootFolder = { fg = c.secondary, bold = true },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeFolderIcon = { fg = c.secondary },
    NvimTreeOpenedFolderName = { fg = c.fg, bold = true },
    NvimTreeEmptyFolderName = { fg = c.fg_dim },
    NvimTreeOpenedFile = { fg = c.fg, bold = true },
    NvimTreeSpecialFile = { fg = c.primary, underline = true },
    NvimTreeIndentMarker = { fg = c.indent },
    NvimTreeWindowPicker = { fg = c.bg, bg = c.secondary, bold = true },
    NvimTreeCursorLine = { bg = c.bg_highlight },
    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_add },
    NvimTreeGitStaged = { fg = c.git_add },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeGitMerge = { fg = c.git_conflict },
    NvimTreeGitRenamed = { fg = c.git_renamed },
    NvimTreeGitIgnored = { fg = c.git_ignored },
  }
end
