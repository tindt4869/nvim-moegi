-- blink integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    BlinkCmpMenu = { fg = c.fg, bg = c.bg_popup },
    BlinkCmpMenuBorder = { fg = c.border, bg = c.bg_popup },
    BlinkCmpMenuSelection = { bg = c.bg_highlight, bold = true },
    BlinkCmpScrollBarThumb = { bg = c.fg_dim },
    BlinkCmpScrollBarGutter = { bg = c.bg_float },
    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelDeprecated = { fg = c.fg_dim, strikethrough = true },
    BlinkCmpLabelMatch = { fg = c.secondary, bold = true },
    BlinkCmpLabelDetail = { fg = c.fg_dim },
    BlinkCmpLabelDescription = { fg = c.fg_dim },
    BlinkCmpKind = { fg = c.secondary },
    BlinkCmpSource = { fg = c.fg_dim },
    BlinkCmpGhostText = { fg = c.fg_dim, italic = true },
    BlinkCmpDoc = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder = { fg = c.border, bg = c.bg_float },
    BlinkCmpDocSeparator = { fg = c.border, bg = c.bg_float },
    BlinkCmpSignatureHelp = { fg = c.fg, bg = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border, bg = c.bg_float },
  }
end
