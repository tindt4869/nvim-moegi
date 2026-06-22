-- cmp integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_dim, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.secondary, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.secondary },
    CmpItemMenu = { fg = c.fg_dim },
    CmpItemKind = { fg = c.secondary },
    CmpItemKindText = { fg = s.string },
    CmpItemKindFunction = { fg = s["function"] },
    CmpItemKindMethod = { fg = s.method },
    CmpItemKindConstructor = { fg = s.type },
    CmpItemKindVariable = { fg = s.variable },
    CmpItemKindField = { fg = s.field },
    CmpItemKindProperty = { fg = s.property },
    CmpItemKindClass = { fg = s.type },
    CmpItemKindInterface = { fg = s.type },
    CmpItemKindStruct = { fg = s.type },
    CmpItemKindEnum = { fg = s.type },
    CmpItemKindEnumMember = { fg = s.constant },
    CmpItemKindKeyword = { fg = s.keyword },
    CmpItemKindSnippet = { fg = s.constant },
    CmpItemKindConstant = { fg = s.constant },
    CmpItemKindModule = { fg = s.namespace },
    CmpItemKindOperator = { fg = s.operator },
    CmpItemKindReference = { fg = s.variable },
    CmpItemKindValue = { fg = s.number },
    CmpItemKindFile = { fg = c.secondary },
    CmpItemKindFolder = { fg = c.secondary },
    CmpItemKindColor = { fg = c.primary },
    CmpItemKindCopilot = { fg = c.secondary },
  }
end
