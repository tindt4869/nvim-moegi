-- treesitter_context integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    TreesitterContext = { bg = c.bg_highlight },
    TreesitterContextLineNumber = { fg = c.fg_dim, bg = c.bg_highlight },
    TreesitterContextBottom = { underline = true, sp = c.border },
    TreesitterContextSeparator = { fg = c.border },
  }
end
