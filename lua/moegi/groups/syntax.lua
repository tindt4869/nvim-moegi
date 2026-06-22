-- Legacy Vim syntax groups (`:help group-name`).

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  local st = config.styles

  -- Merge a base spec with a user style table.
  local function with(spec, style)
    return style and vim.tbl_extend("force", spec, style) or spec
  end

  return {
    Comment = with({ fg = s.comment }, st.comments),

    Constant = { fg = s.constant },
    String = with({ fg = s.string }, st.strings),
    Character = { fg = s.character },
    Number = { fg = s.number },
    Float = { fg = s.number },
    Boolean = with({ fg = s.boolean }, st.booleans),

    Identifier = with({ fg = s.variable }, st.variables),
    Function = with({ fg = s["function"] }, st.functions),

    Statement = with({ fg = s.keyword }, st.keywords),
    Conditional = with({ fg = s.conditional }, st.keywords),
    Repeat = with({ fg = s.conditional }, st.keywords),
    Label = { fg = s.label },
    Operator = { fg = s.operator },
    Keyword = with({ fg = s.keyword }, st.keywords),
    Exception = with({ fg = s.conditional }, st.keywords),

    PreProc = { fg = s.preproc },
    Include = { fg = s.preproc },
    Define = { fg = s.preproc },
    Macro = { fg = s.preproc },
    PreCondit = { fg = s.preproc },

    Type = with({ fg = s.type }, st.types),
    StorageClass = with({ fg = s.storage }, st.keywords),
    Structure = with({ fg = s.type }, st.types),
    Typedef = with({ fg = s.type }, st.types),

    Special = { fg = s.string_escape },
    SpecialChar = { fg = s.string_escape },
    Tag = { fg = s.tag },
    Delimiter = { fg = s.punctuation },
    SpecialComment = { fg = s.comment, bold = true },
    Debug = { fg = s.constant },

    Underlined = { fg = s.md_link, underline = true },
    Ignore = { fg = c.fg_dim },
    Error = { fg = s.invalid },
    Todo = { fg = c.bg, bg = c.secondary, bold = true },
  }
end
