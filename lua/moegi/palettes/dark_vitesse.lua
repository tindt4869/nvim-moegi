-- Moegi Dark Vitesse — Moegi palette (dark)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-dark-vitesse-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_dark_vitesse",
  background = "dark",

  -- Backgrounds
  bg = "#202020",
  bg_dark = "#181818",
  bg_float = "#2a2a2a",
  bg_popup = "#202020",
  bg_highlight = "#333333",
  bg_visual = "#ffffff1f",
  bg_search = "#66b3952f",
  bg_search_cur = "#66b3954f",
  bg_statusline = "#181818",
  bg_tab_active = "#202020",
  bg_tab_inactive = "#181818",
  bg_input = "#202020",
  bg_code = "#444444",

  -- Foregrounds
  fg = "#dddddd",
  fg_ui = "#999999",
  fg_dim = "#666666",
  fg_disabled = "#777777",
  linenr = "#666666",
  linenr_active = "#cccccc",
  inlayhint = "#ffffff6f",
  winbar = "#666666",

  -- UI lines & cursor
  cursor = "#ff8787",
  border = "#ffffff12",
  border_focus = "#ffffff3f",
  indent = "#ffffff12",
  indent_active = "#ffffff3f",
  whitespace = "#ffffff12",

  -- Accents
  primary = "#ff8787",
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
  comment = "#758575dd",
  punctuation = "#666666",
  operator = "#cb7676",
  keyword = "#4d9375",
  conditional = "#4d9375",
  storage = "#cb7676",
  string = "#c98a7d",
  string_escape = "#c98a7d",
  regex = "#c4704f",
  number = "#4C9A91",
  boolean = "#4d9375",
  constant = "#4d9375",
  character = "#c98a7d",
  ["function"] = "#80a665",
  method = "#80a665",
  variable = "#bd976a",
  variable_builtin = "#c99076",
  parameter = "#dbd7caee",
  field = "#b8a965",
  property = "#b8a965",
  type = "#5DA994",
  type_builtin = "#cb7676",
  class = "#5DA994",
  namespace = "#db889a",
  tag = "#4d9375",
  tag_attribute = "#bd976a",
  preproc = "#4d9375",
  label = "#dddddd",
  invalid = "#fdaeb7",
  md_heading = "#4d9375",
  md_bold = "#dbd7caee",
  md_italic = "#dbd7caee",
  md_quote = "#5d99a9",
  md_link = "#c98a7d",
  md_raw = "#4d9375",
  md_list = "#d4976c",
  md_inserted = "#85e89d",
  md_deleted = "#fdaeb7",
  md_changed = "#ffab70",
}

-- Semantic token overrides (as defined upstream)
M.semantic = {
  namespace = "#db889a",
  property = "#b8a965",
  interface = "#5DA994",
  type = "#5DA994",
  class = "#6893BF",
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
