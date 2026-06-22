-- gitsigns integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.git_change },
    GitSignsDeleteNr = { fg = c.git_delete },
    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.diff_change },
    GitSignsDeleteLn = { bg = c.diff_delete },
    GitSignsAddInline = { bg = c.diff_add },
    GitSignsChangeInline = { bg = c.diff_change },
    GitSignsDeleteInline = { bg = c.diff_delete },
    GitSignsCurrentLineBlame = { fg = c.fg_dim, italic = true },
    GitSignsUntracked = { fg = c.git_renamed },
  }
end
