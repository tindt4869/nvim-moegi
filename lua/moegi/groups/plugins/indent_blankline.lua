-- indent_blankline integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    IblIndent = { fg = c.indent },
    IblWhitespace = { fg = c.whitespace },
    IblScope = { fg = c.indent_active },
    IndentBlanklineChar = { fg = c.indent },
    IndentBlanklineContextChar = { fg = c.indent_active },
    IndentBlanklineSpaceChar = { fg = c.whitespace },
  }
end
