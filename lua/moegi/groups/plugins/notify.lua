-- notify integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    NotifyBackground = { bg = c.bg_float },
    NotifyERRORBorder = { fg = c.error, bg = c.bg_float },
    NotifyWARNBorder = { fg = c.warning, bg = c.bg_float },
    NotifyINFOBorder = { fg = c.info, bg = c.bg_float },
    NotifyDEBUGBorder = { fg = c.fg_dim, bg = c.bg_float },
    NotifyTRACEBorder = { fg = c.secondary, bg = c.bg_float },
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.fg_dim },
    NotifyTRACEIcon = { fg = c.secondary },
    NotifyERRORTitle = { fg = c.error, bold = true },
    NotifyWARNTitle = { fg = c.warning, bold = true },
    NotifyINFOTitle = { fg = c.info, bold = true },
    NotifyDEBUGTitle = { fg = c.fg_dim, bold = true },
    NotifyTRACETitle = { fg = c.secondary, bold = true },
    NotifyERRORBody = { fg = c.fg, bg = c.bg_float },
    NotifyWARNBody = { fg = c.fg, bg = c.bg_float },
    NotifyINFOBody = { fg = c.fg, bg = c.bg_float },
    NotifyDEBUGBody = { fg = c.fg, bg = c.bg_float },
    NotifyTRACEBody = { fg = c.fg, bg = c.bg_float },
  }
end
