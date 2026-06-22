-- mason integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    MasonNormal = { fg = c.fg, bg = c.bg_float },
    MasonHeader = { fg = c.bg, bg = c.secondary, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.primary, bold = true },
    MasonHighlight = { fg = c.secondary },
    MasonHighlightBlock = { fg = c.bg, bg = c.secondary },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.secondary, bold = true },
    MasonHighlightSecondary = { fg = c.primary },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.primary },
    MasonHighlightBlockBoldSecondary = { fg = c.bg, bg = c.primary, bold = true },
    MasonMuted = { fg = c.fg_dim },
    MasonMutedBlock = { fg = c.fg_dim, bg = c.bg_highlight },
    MasonMutedBlockBold = { fg = c.fg_dim, bg = c.bg_highlight, bold = true },
    MasonError = { fg = c.error },
    MasonWarning = { fg = c.warning },
  }
end
