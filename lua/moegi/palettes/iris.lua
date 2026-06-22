-- Moegi Iris — Moegi palette (light)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-iris-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_iris",
  background = "light",

  -- Backgrounds
  bg = "#f5f2f9",
  bg_dark = "#efeaf5",
  bg_float = "#fbf3ff",
  bg_popup = "#fbf3ff",
  bg_highlight = "#f0e6f5",
  bg_visual = "#13071815",
  bg_search = "#26966a2f",
  bg_search_cur = "#26966a4f",
  bg_statusline = "#efeaf5",
  bg_tab_active = "#f5f2f9",
  bg_tab_inactive = "#efeaf5",
  bg_input = "#f5f2f9",
  bg_code = "#efeaf5",

  -- Foregrounds
  fg = "#433748",
  fg_ui = "#685f57",
  fg_dim = "#b3a7b8",
  fg_disabled = "#a397a8",
  linenr = "#b3a7b8",
  linenr_active = "#534758",
  inlayhint = "#26966a",
  winbar = "#a397a8",

  -- UI lines & cursor
  cursor = "#e38181",
  border = "#1307181a",
  border_focus = "#26966a",
  indent = "#13071810",
  indent_active = "#13071829",
  whitespace = "#13071810",

  -- Accents
  primary = "#b290ba",
  secondary = "#8bc6b0",
  link = "#af5d5d",

  -- Diagnostics
  error = "#e38181",
  warning = "#e7d38f",
  info = "#7098d4",
  hint = "#8bc6b0",

  -- Git / diff
  git_add = "#26966acf",
  git_change = "#e7d38f",
  git_delete = "#c55151",
  git_renamed = "#7098d4",
  git_ignored = "#a397a8",
  git_conflict = "#dd9a6a",
  diff_add = "#26966a20",
  diff_change = "#7098d43f",
  diff_delete = "#e3818120",
  gutter_add = "#26966acf",
  gutter_change = "#7098d4cf",
  gutter_delete = "#c55151",
}

-- Syntax / token colors
M.syntax = {
  comment = "#1307184f",
  punctuation = "#1307185f",
  operator = "#c05386",
  keyword = "#c05386",
  conditional = "#c05386",
  storage = "#c05386",
  string = "#377961",
  string_escape = "#668f9a",
  regex = "#c7792b",
  number = "#c7792b",
  boolean = "#c7792b",
  constant = "#c7792b",
  character = "#c7792b",
  ["function"] = "#668f9a",
  method = "#668f9a",
  variable = "#6b588e",
  variable_builtin = "#c05386",
  parameter = "#6b588e",
  field = "#6b588e",
  property = "#6b588e",
  type = "#b5855c",
  type_builtin = "#b5855c",
  class = "#b5855c",
  namespace = "#b5855c",
  tag = "#c05386",
  tag_attribute = "#668f9a",
  preproc = "#668f9a",
  label = "#a397a8",
  invalid = "#e47474",
  md_heading = "#377961",
  md_bold = "#6b588e",
  md_italic = "#6b588e",
  md_quote = "#a0a0a0",
  md_link = "#668f9a",
  md_raw = "#c7792b",
  md_list = "#668f9a",
  md_inserted = "#377961",
  md_deleted = "#cc6262",
  md_changed = "#668f9a",
}

-- Semantic token overrides (as defined upstream)
M.semantic = {
  newOperator = "#c05386",
  stringLiteral = "#377961",
  customLiteral = "#c7792b",
  numberLiteral = "#c7792b",
}

-- Rainbow bracket pairs (1-4)
M.bracket = { "#b5a165", "#528f77", "#8e7395", "#5a7aaa" }

-- Terminal ANSI (16)
M.terminal = {
  black = "#635768",
  red = "#e47474",
  green = "#66b395",
  yellow = "#e2c97e",
  blue = "#7098d4",
  magenta = "#b290ba",
  cyan = "#6ab8c0",
  white = "#e8dfd7",
  bright_black = "#938798",
  bright_red = "#f48484",
  bright_green = "#76c3a5",
  bright_yellow = "#f2d98e",
  bright_blue = "#80a8e4",
  bright_magenta = "#c2a0ca",
  bright_cyan = "#7ac8d0",
  bright_white = "#efeaf5",
}

return M
