-- trouble integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    TroubleNormal = { fg = c.fg, bg = c.bg_dark },
    TroubleNormalNC = { fg = c.fg, bg = c.bg_dark },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.secondary, bg = c.bg_highlight, bold = true },
    TroubleFoldIcon = { fg = c.fg_dim },
    TroubleIndent = { fg = c.indent },
    TroubleLocation = { fg = c.fg_dim },
    TroubleSource = { fg = c.fg_dim, italic = true },
    TroublePos = { fg = c.fg_dim },
    TroubleFileName = { fg = c.secondary },
    TroubleDirectory = { fg = c.fg_dim },
  }
end
