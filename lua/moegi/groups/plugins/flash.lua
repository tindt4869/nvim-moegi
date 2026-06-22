-- flash integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    FlashBackdrop = { fg = c.fg_dim },
    FlashMatch = { fg = c.fg, bg = c.bg_search },
    FlashCurrent = { fg = c.bg, bg = c.secondary, bold = true },
    FlashLabel = { fg = c.bg, bg = c.primary, bold = true },
    FlashPrompt = { fg = c.fg, bg = c.bg_statusline },
    FlashPromptIcon = { fg = c.primary },
  }
end
