-- dap integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    DapUINormal = { fg = c.fg, bg = c.bg_float },
    DapUIVariable = { fg = c.fg },
    DapUIScope = { fg = c.secondary },
    DapUIType = { fg = s.type },
    DapUIValue = { fg = c.fg },
    DapUIModifiedValue = { fg = c.warning, bold = true },
    DapUIDecoration = { fg = c.info },
    DapUIThread = { fg = c.git_add },
    DapUIStoppedThread = { fg = c.secondary },
    DapUISource = { fg = s.variable },
    DapUILineNumber = { fg = c.info },
    DapUIFloatBorder = { fg = c.border, bg = c.bg_float },
    DapUIWatchesEmpty = { fg = c.error },
    DapUIWatchesValue = { fg = c.git_add },
    DapUIWatchesError = { fg = c.error },
    DapUIBreakpointsPath = { fg = c.secondary },
    DapUIBreakpointsInfo = { fg = c.git_add },
    DapUIBreakpointsCurrentLine = { fg = c.warning, bold = true },
    DapUIBreakpointsLine = { fg = c.info },
    DapUIPlayPause = { fg = c.git_add },
    DapUIRestart = { fg = c.git_add },
    DapUIStop = { fg = c.error },
    DapUIStepOver = { fg = c.info },
    DapUIStepInto = { fg = c.info },
    DapUIStepOut = { fg = c.info },
    DapUIStepBack = { fg = c.info },
    DapBreakpoint = { fg = c.error },
    DapBreakpointCondition = { fg = c.warning },
    DapBreakpointRejected = { fg = c.fg_dim },
    DapLogPoint = { fg = c.info },
    DapStopped = { fg = c.git_add },
    DapStoppedLine = { bg = c.bg_highlight },
  }
end
