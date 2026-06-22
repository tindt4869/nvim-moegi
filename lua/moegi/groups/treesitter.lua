-- Tree-sitter capture groups (`:help treesitter-highlight-groups`).

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  local st = config.styles
  local function with(spec, style)
    return style and vim.tbl_extend("force", spec, style) or spec
  end

  return {
    -- Identifiers
    ["@variable"] = with({ fg = s.variable }, st.variables),
    ["@variable.builtin"] = { fg = s.variable_builtin, italic = true },
    ["@variable.parameter"] = { fg = s.parameter },
    ["@variable.parameter.builtin"] = { fg = s.parameter, italic = true },
    ["@variable.member"] = { fg = s.field },

    ["@constant"] = { fg = s.constant },
    ["@constant.builtin"] = { fg = s.constant },
    ["@constant.macro"] = { fg = s.preproc },

    ["@module"] = { fg = s.namespace },
    ["@module.builtin"] = { fg = s.namespace, italic = true },
    ["@label"] = { fg = s.label },

    -- Literals
    ["@string"] = with({ fg = s.string }, st.strings),
    ["@string.documentation"] = { fg = s.string },
    ["@string.regexp"] = { fg = s.regex },
    ["@string.escape"] = { fg = s.string_escape },
    ["@string.special"] = { fg = s.string_escape },
    ["@string.special.symbol"] = { fg = s.constant },
    ["@string.special.url"] = { fg = s.md_link, underline = true },
    ["@string.special.path"] = { fg = s.string },
    ["@character"] = { fg = s.character },
    ["@character.special"] = { fg = s.string_escape },
    ["@boolean"] = with({ fg = s.boolean }, st.booleans),
    ["@number"] = { fg = s.number },
    ["@number.float"] = { fg = s.number },

    -- Types
    ["@type"] = with({ fg = s.type }, st.types),
    ["@type.builtin"] = with({ fg = s.type_builtin }, st.types),
    ["@type.definition"] = with({ fg = s.type }, st.types),
    ["@type.qualifier"] = { fg = s.keyword },
    ["@attribute"] = { fg = s.preproc },
    ["@attribute.builtin"] = { fg = s.preproc },
    ["@property"] = { fg = s.property },

    -- Functions
    ["@function"] = with({ fg = s["function"] }, st.functions),
    ["@function.builtin"] = with({ fg = s["function"] }, st.functions),
    ["@function.call"] = with({ fg = s["function"] }, st.functions),
    ["@function.macro"] = { fg = s.preproc },
    ["@function.method"] = with({ fg = s.method }, st.functions),
    ["@function.method.call"] = with({ fg = s.method }, st.functions),
    ["@constructor"] = { fg = s.type },

    -- Keywords & operators
    ["@operator"] = { fg = s.operator },
    ["@keyword"] = with({ fg = s.keyword }, st.keywords),
    ["@keyword.coroutine"] = with({ fg = s.keyword }, st.keywords),
    ["@keyword.function"] = with({ fg = s.keyword }, st.keywords),
    ["@keyword.operator"] = { fg = s.operator },
    ["@keyword.import"] = { fg = s.preproc },
    ["@keyword.type"] = with({ fg = s.storage }, st.keywords),
    ["@keyword.modifier"] = with({ fg = s.storage }, st.keywords),
    ["@keyword.repeat"] = with({ fg = s.conditional }, st.keywords),
    ["@keyword.return"] = with({ fg = s.conditional }, st.keywords),
    ["@keyword.debug"] = { fg = s.constant },
    ["@keyword.exception"] = with({ fg = s.conditional }, st.keywords),
    ["@keyword.conditional"] = with({ fg = s.conditional }, st.keywords),
    ["@keyword.conditional.ternary"] = { fg = s.operator },
    ["@keyword.directive"] = { fg = s.preproc },
    ["@keyword.directive.define"] = { fg = s.preproc },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = s.punctuation },
    ["@punctuation.bracket"] = { fg = s.punctuation },
    ["@punctuation.special"] = { fg = s.string_escape },

    -- Comments
    ["@comment"] = with({ fg = s.comment }, st.comments),
    ["@comment.documentation"] = { fg = s.comment },
    ["@comment.error"] = { fg = c.bg, bg = c.error, bold = true },
    ["@comment.warning"] = { fg = c.bg, bg = c.warning, bold = true },
    ["@comment.todo"] = { fg = c.bg, bg = c.secondary, bold = true },
    ["@comment.note"] = { fg = c.bg, bg = c.info, bold = true },

    -- Markup (markdown, etc.)
    ["@markup.strong"] = { fg = s.md_bold, bold = true },
    ["@markup.italic"] = { fg = s.md_italic, italic = true },
    ["@markup.strikethrough"] = { fg = c.fg_dim, strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = s.md_heading, bold = true },
    ["@markup.heading.1"] = { fg = s.md_heading, bold = true },
    ["@markup.heading.2"] = { fg = c.secondary, bold = true },
    ["@markup.heading.3"] = { fg = s["function"], bold = true },
    ["@markup.heading.4"] = { fg = s.variable, bold = true },
    ["@markup.heading.5"] = { fg = s.type, bold = true },
    ["@markup.heading.6"] = { fg = s.constant, bold = true },
    ["@markup.quote"] = { fg = s.md_quote, italic = true },
    ["@markup.math"] = { fg = s.constant },
    ["@markup.link"] = { fg = s.md_link },
    ["@markup.link.label"] = { fg = s.md_link },
    ["@markup.link.url"] = { fg = s.md_link, underline = true },
    ["@markup.raw"] = { fg = s.md_raw },
    ["@markup.raw.block"] = { fg = s.md_raw },
    ["@markup.list"] = { fg = s.md_list },
    ["@markup.list.checked"] = { fg = c.git_add },
    ["@markup.list.unchecked"] = { fg = c.fg_dim },

    -- Diff
    ["@diff.plus"] = { fg = c.git_add },
    ["@diff.minus"] = { fg = c.git_delete },
    ["@diff.delta"] = { fg = c.git_change },

    -- Tags (HTML/JSX/XML)
    ["@tag"] = { fg = s.tag },
    ["@tag.builtin"] = { fg = s.tag },
    ["@tag.attribute"] = { fg = s.tag_attribute },
    ["@tag.delimiter"] = { fg = s.punctuation },
  }
end
