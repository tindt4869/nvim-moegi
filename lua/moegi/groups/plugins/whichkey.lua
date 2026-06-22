-- whichkey integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    WhichKey = { fg = c.secondary },
    WhichKeyGroup = { fg = s.variable },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.fg_dim },
    WhichKeyValue = { fg = c.fg_dim },
    WhichKeyFloat = { bg = c.bg_float },
    WhichKeyBorder = { fg = c.border, bg = c.bg_float },
    WhichKeyTitle = { fg = c.secondary, bg = c.bg_float },
    WhichKeyIcon = { fg = c.secondary },
    WhichKeyIconAzure = { fg = c.info },
  }
end
