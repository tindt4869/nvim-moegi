-- Terminal ANSI colors. Returns an array of 16 "#rrggbb" strings, applied by
-- init.lua to vim.g.terminal_color_0 .. terminal_color_15.

---@param c table  resolved palette
---@return string[]
return function(c)
  local t = c.terminal
  return {
    t.black, t.red, t.green, t.yellow,            -- 0-3
    t.blue, t.magenta, t.cyan, t.white,           -- 4-7
    t.bright_black, t.bright_red, t.bright_green, t.bright_yellow, -- 8-11
    t.bright_blue, t.bright_magenta, t.bright_cyan, t.bright_white, -- 12-15
  }
end
