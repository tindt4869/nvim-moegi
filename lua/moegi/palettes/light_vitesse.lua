-- Moegi Light Vitesse — Moegi palette (light)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-light-vitesse-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_light_vitesse",
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
  comment = "#a0ada0",
  punctuation = "#999999",
  operator = "#ab5959",
  keyword = "#1e754f",
  conditional = "#1e754f",
  storage = "#ab5959",
  string = "#b56959",
  string_escape = "#b56959",
  regex = "#ab5e3f",
  number = "#2f798a",
  boolean = "#1e754f",
  constant = "#1e754f",
  character = "#b56959",
  ["function"] = "#59873a",
  method = "#59873a",
  variable = "#b07d48",
  variable_builtin = "#a65e2b",
  parameter = "#393a34",
  field = "#998418",
  property = "#998418",
  type = "#2e8f82",
  type_builtin = "#ab5959",
  class = "#2e8f82",
  namespace = "#b05a78",
  tag = "#1e754f",
  tag_attribute = "#b07d48",
  preproc = "#1e754f",
  label = "#333333",
  invalid = "#b31d28",
  md_heading = "#1c6b48",
  md_bold = "#393a34",
  md_italic = "#393a34",
  md_quote = "#2e808f",
  md_link = "#b56959",
  md_raw = "#1c6b48",
  md_list = "#a65e2b",
  md_inserted = "#22863a",
  md_deleted = "#b31d28",
  md_changed = "#e36209",
}

-- Semantic token overrides (as defined upstream)
M.semantic = {
  namespace = "#b05a78",
  property = "#998418",
  interface = "#2e8f82",
  type = "#2e8f82",
  class = "#5a6aa6",
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
