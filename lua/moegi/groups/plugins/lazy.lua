-- lazy integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    LazyNormal = { fg = c.fg, bg = c.bg_float },
    LazyButton = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg, bg = c.secondary, bold = true },
    LazyH1 = { fg = c.bg, bg = c.secondary, bold = true },
    LazyH2 = { fg = c.secondary, bold = true },
    LazySpecial = { fg = c.secondary },
    LazyProgressDone = { fg = c.secondary },
    LazyProgressTodo = { fg = c.fg_dim },
    LazyCommit = { fg = s.number },
    LazyCommitIssue = { fg = s.number },
    LazyReasonPlugin = { fg = c.primary },
    LazyReasonRuntime = { fg = s.constant },
    LazyReasonCmd = { fg = s.type },
    LazyReasonEvent = { fg = s.string },
    LazyReasonKeys = { fg = s.keyword },
    LazyReasonFt = { fg = s.variable },
    LazyReasonSource = { fg = s["function"] },
    LazyReasonStart = { fg = c.secondary },
    LazyDir = { fg = c.fg },
    LazyUrl = { fg = c.link, underline = true },
    LazyDimmed = { fg = c.fg_dim },
    LazyProp = { fg = c.fg_dim },
  }
end
