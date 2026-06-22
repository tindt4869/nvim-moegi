-- LSP, diagnostics, and semantic-token highlight groups.

local util = require("moegi.util")

---@param c table
---@param config table
---@return table
return function(c, config)
  local s = c.syntax
  -- Soft background tint for virtual text, derived from each diagnostic color.
  local function vt(color)
    return util.blend(color, c.bg, 0.12)
  end

  local groups = {
    -- Diagnostics
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.git_add },

    DiagnosticVirtualTextError = { fg = c.error, bg = vt(c.error) },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = vt(c.warning) },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = vt(c.info) },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = vt(c.hint) },
    DiagnosticVirtualTextOk = { fg = c.git_add, bg = vt(c.git_add) },

    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.git_add, undercurl = true },

    DiagnosticFloatingError = { fg = c.error },
    DiagnosticFloatingWarn = { fg = c.warning },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticFloatingOk = { fg = c.git_add },

    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn = { fg = c.warning },
    DiagnosticSignInfo = { fg = c.info },
    DiagnosticSignHint = { fg = c.hint },
    DiagnosticSignOk = { fg = c.git_add },

    DiagnosticDeprecated = { fg = c.fg_dim, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.fg_dim },

    -- References & document highlights
    LspReferenceText = { bg = c.bg_highlight },
    LspReferenceRead = { bg = c.bg_highlight },
    LspReferenceWrite = { bg = c.bg_highlight, underline = true },
    LspSignatureActiveParameter = { fg = c.secondary, bold = true },
    LspCodeLens = { fg = c.fg_dim },
    LspCodeLensSeparator = { fg = c.fg_dim },
    LspInlayHint = { fg = c.inlayhint, bg = c.bg_highlight },

    -- Semantic tokens
    ["@lsp.type.class"] = { fg = s.class },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = s.preproc },
    ["@lsp.type.enum"] = { fg = s.type },
    ["@lsp.type.enumMember"] = { fg = s.constant },
    ["@lsp.type.function"] = { fg = s["function"] },
    ["@lsp.type.interface"] = { fg = s.type },
    ["@lsp.type.macro"] = { fg = s.preproc },
    ["@lsp.type.method"] = { fg = s.method },
    ["@lsp.type.namespace"] = { fg = s.namespace },
    ["@lsp.type.parameter"] = { fg = s.parameter },
    ["@lsp.type.property"] = { fg = s.property },
    ["@lsp.type.struct"] = { fg = s.type },
    ["@lsp.type.type"] = { fg = s.type },
    ["@lsp.type.typeParameter"] = { fg = s.type_builtin },
    ["@lsp.type.variable"] = { fg = s.variable },
    ["@lsp.typemod.variable.readonly"] = { fg = s.constant },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = s.variable_builtin },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = s["function"] },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }

  return groups
end
