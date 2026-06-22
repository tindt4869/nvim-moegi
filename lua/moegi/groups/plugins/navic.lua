-- navic integration.

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  return {
    NavicText = { fg = c.fg },
    NavicSeparator = { fg = c.fg_dim },
    NavicIconsFile = { fg = c.fg },
    NavicIconsModule = { fg = s.namespace },
    NavicIconsNamespace = { fg = s.namespace },
    NavicIconsPackage = { fg = s.namespace },
    NavicIconsClass = { fg = s.type },
    NavicIconsMethod = { fg = s.method },
    NavicIconsProperty = { fg = s.property },
    NavicIconsField = { fg = s.field },
    NavicIconsConstructor = { fg = s.type },
    NavicIconsEnum = { fg = s.type },
    NavicIconsInterface = { fg = s.type },
    NavicIconsFunction = { fg = s["function"] },
    NavicIconsVariable = { fg = s.variable },
    NavicIconsConstant = { fg = s.constant },
    NavicIconsString = { fg = s.string },
    NavicIconsNumber = { fg = s.number },
    NavicIconsBoolean = { fg = s.boolean },
    NavicIconsArray = { fg = s.type },
    NavicIconsObject = { fg = s.type },
    NavicIconsKey = { fg = s.keyword },
    NavicIconsKeyword = { fg = s.keyword },
    NavicIconsNull = { fg = s.constant },
    NavicIconsEnumMember = { fg = s.constant },
    NavicIconsStruct = { fg = s.type },
    NavicIconsEvent = { fg = s.constant },
    NavicIconsOperator = { fg = s.operator },
    NavicIconsTypeParameter = { fg = s.type_builtin },
  }
end
