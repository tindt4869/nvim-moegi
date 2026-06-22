-- telescope integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder = { fg = c.border, bg = c.bg_float },
    TelescopeTitle = { fg = c.fg_dim },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_popup },
    TelescopePromptBorder = { fg = c.bg_popup, bg = c.bg_popup },
    TelescopePromptTitle = { fg = c.bg, bg = c.primary, bold = true },
    TelescopePromptPrefix = { fg = c.primary, bg = c.bg_popup },
    TelescopePromptCounter = { fg = c.fg_dim, bg = c.bg_popup },
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopeResultsTitle = { fg = c.bg_float, bg = c.bg_float },
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg_float },
    TelescopePreviewBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopePreviewTitle = { fg = c.bg, bg = c.secondary, bold = true },
    TelescopeSelection = { bg = c.bg_highlight, bold = true },
    TelescopeSelectionCaret = { fg = c.primary, bg = c.bg_highlight },
    TelescopeMultiSelection = { fg = c.secondary },
    TelescopeMatching = { fg = c.secondary, bold = true },
  }
end
