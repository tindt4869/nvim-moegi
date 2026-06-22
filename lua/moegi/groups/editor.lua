-- Core editor & UI highlight groups (built-in `:help highlight-groups`).

---@param c table   resolved palette
---@param config table
---@return table
return function(c, config)
  local normal_nc_bg = config.dim_inactive and c.bg_dark or c.bg

  return {
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = normal_nc_bg },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    FloatBorder = { fg = c.border, bg = c.bg_float },
    FloatTitle = { fg = c.secondary, bg = c.bg_float, bold = true },
    FloatFooter = { fg = c.fg_dim, bg = c.bg_float },

    ColorColumn = { bg = c.bg_highlight },
    Conceal = { fg = c.fg_dim },
    Cursor = { fg = c.bg, bg = c.cursor },
    lCursor = { fg = c.bg, bg = c.cursor },
    CursorIM = { fg = c.bg, bg = c.cursor },
    CursorColumn = { bg = c.bg_highlight },
    CursorLine = { bg = c.bg_highlight },
    Directory = { fg = c.secondary },

    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.gutter_change },
    -- diff-mode line summaries
    Added = { fg = c.git_add },
    Changed = { fg = c.git_change },
    Removed = { fg = c.git_delete },

    EndOfBuffer = { fg = c.bg },
    ErrorMsg = { fg = c.error },
    WinSeparator = { fg = c.border },
    VertSplit = { fg = c.border },
    Folded = { fg = c.fg_dim, bg = c.bg_highlight },
    FoldColumn = { fg = c.fg_dim, bg = c.bg },
    SignColumn = { fg = c.fg_dim, bg = c.bg },
    SignColumnSB = { fg = c.fg_dim, bg = c.bg_dark },

    Substitute = { fg = c.bg, bg = c.warning },
    LineNr = { fg = c.linenr },
    LineNrAbove = { fg = c.linenr },
    LineNrBelow = { fg = c.linenr },
    CursorLineNr = { fg = c.linenr_active, bold = true },
    CursorLineSign = { bg = c.bg },
    CursorLineFold = { bg = c.bg },

    MatchParen = { fg = c.primary, bold = true },
    ModeMsg = { fg = c.fg_ui, bold = true },
    MsgArea = { fg = c.fg_ui },
    MsgSeparator = { fg = c.border },
    MoreMsg = { fg = c.secondary },
    NonText = { fg = c.whitespace },
    Whitespace = { fg = c.whitespace },
    SpecialKey = { fg = c.fg_dim },

    Pmenu = { fg = c.fg, bg = c.bg_popup },
    PmenuSel = { bg = c.bg_highlight, bold = true },
    PmenuKind = { fg = c.secondary, bg = c.bg_popup },
    PmenuKindSel = { fg = c.secondary, bg = c.bg_highlight },
    PmenuExtra = { fg = c.fg_dim, bg = c.bg_popup },
    PmenuExtraSel = { fg = c.fg_dim, bg = c.bg_highlight },
    PmenuSbar = { bg = c.bg_float },
    PmenuThumb = { bg = c.fg_dim },

    Question = { fg = c.secondary },
    QuickFixLine = { bg = c.bg_highlight, bold = true },

    Search = { fg = c.fg, bg = c.bg_search },
    IncSearch = { fg = c.bg, bg = c.warning },
    CurSearch = { fg = c.bg, bg = c.warning },

    StatusLine = { fg = c.fg_ui, bg = c.bg_statusline },
    StatusLineNC = { fg = c.fg_dim, bg = c.bg_statusline },

    TabLine = { fg = c.fg_dim, bg = c.bg_tab_inactive },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg_tab_active },

    Title = { fg = c.secondary, bold = true },

    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    WarningMsg = { fg = c.warning },
    WildMenu = { bg = c.bg_visual },

    WinBar = { fg = c.winbar, bg = c.bg },
    WinBarNC = { fg = c.fg_dim, bg = c.bg },

    -- Spelling
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.secondary, undercurl = true },

    -- Misc
    Cursorline = { bg = c.bg_highlight },
    debugPC = { bg = c.bg_dark },
    debugBreakpoint = { fg = c.error, bg = c.bg },
    FloatShadow = { bg = c.bg_dark, blend = 30 },
    FloatShadowThrough = { bg = c.bg_dark, blend = 60 },

    -- Health / man / help
    healthSuccess = { fg = c.git_add },
    helpHyperTextEntry = { fg = c.secondary },
  }
end
