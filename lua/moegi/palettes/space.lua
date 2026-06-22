-- Moegi Space — Moegi palette (dark)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-space-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_space",
  background = "dark",

  -- Backgrounds
  bg = "#221e30",
  bg_dark = "#191624",
  bg_float = "#2d2a3e",
  bg_popup = "#2d2a3e",
  bg_highlight = "#2d2a3e",
  bg_visual = "#f8f2fd1f",
  bg_search = "#66b3952f",
  bg_search_cur = "#66b3954f",
  bg_statusline = "#191624",
  bg_tab_active = "#221e30",
  bg_tab_inactive = "#191624",
  bg_input = "#221e30",
  bg_code = "#48425d",

  -- Foregrounds
  fg = "#ddd8e4",
  fg_ui = "#9892ad",
  fg_dim = "#68627d",
  fg_disabled = "#78728d",
  linenr = "#68627d",
  linenr_active = "#c8c2dd",
  inlayhint = "#f8f2fd6f",
  winbar = "#655f7e",

  -- UI lines & cursor
  cursor = "#ff8787",
  border = "#f8f2fd12",
  border_focus = "#f8f2fd3f",
  indent = "#f8f2fd12",
  indent_active = "#f8f2fd3f",
  whitespace = "#f8f2fd12",

  -- Accents
  primary = "#b290ba",
  secondary = "#66b395",
  link = "#ff8787",

  -- Diagnostics
  error = "#ff8787",
  warning = "#e7d38f",
  info = "#7098d4",
  hint = "#66b395",

  -- Git / diff
  git_add = "#66b395",
  git_change = "#e7d38f",
  git_delete = "#ff8787",
  git_renamed = "#6ab8c0",
  git_ignored = "#f8f2fd3f",
  git_conflict = "#dd9a6a",
  diff_add = "#66b39530",
  diff_change = "#7098d43f",
  diff_delete = "#ff878730",
  gutter_add = "#66b395af",
  gutter_change = "#7098d4af",
  gutter_delete = "#ff8787af",
}

-- Syntax / token colors
M.syntax = {
  comment = "#f8f2fd4f",
  punctuation = "#f8f2fd5f",
  operator = "#ed9cc2",
  keyword = "#ed9cc2",
  conditional = "#ed9cc2",
  storage = "#ed9cc2",
  string = "#74ccaa",
  string_escape = "#5fb5be",
  regex = "#f6c177",
  number = "#f6c177",
  boolean = "#f6c177",
  constant = "#f6c177",
  character = "#f6c177",
  ["function"] = "#5fb5be",
  method = "#5fb5be",
  variable = "#a0a5d6",
  variable_builtin = "#ed9cc2",
  parameter = "#a0a5d6",
  field = "#a0a5d6",
  property = "#a0a5d6",
  type = "#f3a580",
  type_builtin = "#f3a580",
  class = "#f3a580",
  namespace = "#f3a580",
  tag = "#ed9cc2",
  tag_attribute = "#5fb5be",
  preproc = "#5fb5be",
  label = "#C8C8C8",
  invalid = "#e47474",
  md_heading = "#74ccaa",
  md_bold = "#a0a5d6",
  md_italic = "#a0a5d6",
  md_quote = "#a0a0a0",
  md_link = "#5fb5be",
  md_raw = "#f6c177",
  md_list = "#5fb5be",
  md_inserted = "#74ccaa",
  md_deleted = "#ff8787",
  md_changed = "#5fb5be",
}

-- Semantic token overrides (as defined upstream)
M.semantic = {
  newOperator = "#ed9cc2",
  stringLiteral = "#74ccaa",
  customLiteral = "#f6c177",
  numberLiteral = "#f6c177",
}

-- Rainbow bracket pairs (1-4)
M.bracket = { "#b5a165", "#5e9c84", "#8e7395", "#5a7aaa" }

-- Terminal ANSI (16)
M.terminal = {
  black = "#38324d",
  red = "#e47474",
  green = "#66b395",
  yellow = "#e2c97e",
  blue = "#7098d4",
  magenta = "#b290ba",
  cyan = "#6ab8c0",
  white = "#dddddd",
  bright_black = "#68627d",
  bright_red = "#f48484",
  bright_green = "#76c3a5",
  bright_yellow = "#f2d98e",
  bright_blue = "#80a8e4",
  bright_magenta = "#c2a0ca",
  bright_cyan = "#7ac8d0",
  bright_white = "#f6f6f6",
}

return M
