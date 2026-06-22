-- illuminate integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    IlluminatedWordText = { bg = c.bg_highlight },
    IlluminatedWordRead = { bg = c.bg_highlight },
    IlluminatedWordWrite = { bg = c.bg_highlight, underline = true },
  }
end
