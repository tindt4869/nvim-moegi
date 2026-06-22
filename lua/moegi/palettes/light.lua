-- Moegi Light — Moegi palette (light)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-light-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_light",
  background = "light",

  -- Backgrounds
  bg = "#ffffff",
  bg_dark = "#f9f9fb",
  bg_float = "#fbfbfb",
  bg_popup = "#fbfbfb",
  bg_highlight = "#f6f6f6",
  bg_visual = "#26966a3a",
  bg_search = "#26966a2f",
  bg_search_cur = "#26966a4f",
  bg_statusline = "#ffffff",
  bg_tab_active = "#ffffff",
  bg_tab_inactive = "#f9f9fb",
  bg_input = "#ffffff",
  bg_code = "#e9e9e9",

  -- Foregrounds
  fg = "#333333",
  fg_ui = "#515151",
  fg_dim = "#aaaaaa",
  fg_disabled = "#999999",
  linenr = "#aaaaaa",
  linenr_active = "#444444",
  inlayhint = "#26966a",
  winbar = "#999999",

  -- UI lines & cursor
  cursor = "#e38181",
  border = "#0000001a",
  border_focus = "#26966a",
  indent = "#00000010",
  indent_active = "#00000029",
  whitespace = "#00000010",

  -- Accents
  primary = "#e38181",
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
  git_ignored = "#999999",
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
  comment = "#0000004f",
  punctuation = "#0000005f",
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
  label = "#999999",
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
  black = "#555555",
  red = "#e47474",
  green = "#66b395",
  yellow = "#e2c97e",
  blue = "#7098d4",
  magenta = "#b290ba",
  cyan = "#6ab8c0",
  white = "#dddddd",
  bright_black = "#888888",
  bright_red = "#f48484",
  bright_green = "#76c3a5",
  bright_yellow = "#f2d98e",
  bright_blue = "#80a8e4",
  bright_magenta = "#c2a0ca",
  bright_cyan = "#7ac8d0",
  bright_white = "#eeeeee",
}

return M
