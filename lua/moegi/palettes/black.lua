-- Moegi Black — Moegi palette (dark)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-black-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_black",
  background = "dark",

  -- Backgrounds
  bg = "#0d0d0d",
  bg_dark = "#050505",
  bg_float = "#181818",
  bg_popup = "#0a0a0a",
  bg_highlight = "#212121",
  bg_visual = "#ffffff1f",
  bg_search = "#66b3952f",
  bg_search_cur = "#66b3954f",
  bg_statusline = "#050505",
  bg_tab_active = "#0d0d0d",
  bg_tab_inactive = "#050505",
  bg_input = "#0f0f0f",
  bg_code = "#292929",

  -- Foregrounds
  fg = "#dddddd",
  fg_ui = "#7f7f7f",
  fg_dim = "#555555",
  fg_disabled = "#6c6c6c",
  linenr = "#555555",
  linenr_active = "#cccccc",
  inlayhint = "#ffffff6f",
  winbar = "#666666",

  -- UI lines & cursor
  cursor = "#ff8787",
  border = "#ffffff15",
  border_focus = "#ffffff1f",
  indent = "#ffffff15",
  indent_active = "#ffffff3f",
  whitespace = "#ffffff15",

  -- Accents
  primary = "#ff8787cf",
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
  git_ignored = "#ffffff3f",
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
  comment = "#ffffff4f",
  punctuation = "#ffffff5f",
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
  black = "#333333",
  red = "#e47474",
  green = "#66b395",
  yellow = "#e2c97e",
  blue = "#7098d4",
  magenta = "#b290ba",
  cyan = "#6ab8c0",
  white = "#dddddd",
  bright_black = "#666666",
  bright_red = "#f48484",
  bright_green = "#76c3a5",
  bright_yellow = "#f2d98e",
  bright_blue = "#80a8e4",
  bright_magenta = "#c2a0ca",
  bright_cyan = "#7ac8d0",
  bright_white = "#f6f6f6",
}

return M
