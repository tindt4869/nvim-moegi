-- rainbow_delimiters integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    RainbowDelimiterRed = { fg = c.bracket[1] },
    RainbowDelimiterYellow = { fg = c.bracket[2] },
    RainbowDelimiterBlue = { fg = c.bracket[4] },
    RainbowDelimiterOrange = { fg = c.bracket[1] },
    RainbowDelimiterGreen = { fg = c.bracket[2] },
    RainbowDelimiterViolet = { fg = c.bracket[3] },
    RainbowDelimiterCyan = { fg = c.bracket[4] },
  }
end
