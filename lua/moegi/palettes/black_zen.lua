-- Moegi Black Zen — Moegi palette (dark)
-- Auto-derived from moegi-design/vscode-theme (themes/moegi-black-zen-color-theme.json)
-- Every color below maps to a value defined in the upstream VS Code theme.

local M = {
  name = "moegi_black_zen",
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
  primary = "#505050",
  secondary = "#999999",
  link = "#ff8787",

  -- Diagnostics
  error = "#ff8787",
  warning = "#e7d38f",
  info = "#7098d4",
  hint = "#999999",

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
  gutter_add = "#66b3954f",
  gutter_change = "#7098d47f",
  gutter_delete = "#ff87877f",
}

-- Syntax / token colors
M.syntax = {
  comment = "#ffffff39",
  punctuation = "#ffffff5f",
  operator = "#707080",
  keyword = "#707080",
  conditional = "#707080",
  storage = "#707080",
  string = "#74ccaa",
  string_escape = "#5fb5be",
  regex = "#f6c177",
  number = "#f6c177",
  boolean = "#f6c177",
  constant = "#f6c177",
  character = "#f6c177",
  ["function"] = "#5fb5be",
  method = "#5fb5be",
  variable = "#b6b6b6",
  variable_builtin = "#707080",
  parameter = "#b6b6b6",
  field = "#b6b6b6",
  property = "#b6b6b6",
  type = "#5fb5be",
  type_builtin = "#5fb5be",
  class = "#5fb5be",
  namespace = "#5fb5be",
  tag = "#ed9cc2",
  tag_attribute = "#5fb5be",
  preproc = "#5fb5be",
  label = "#C8C8C8",
  invalid = "#d2aaaa",
  md_heading = "#74ccaa",
  md_bold = "#b6b6b6",
  md_italic = "#b6b6b6",
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
  newOperator = "#707080",
  stringLiteral = "#74ccaa",
  customLiteral = "#f6c177",
  numberLiteral = "#f6c177",
}

-- Rainbow bracket pairs (1-4)
M.bracket = { "#aaaaaa7f", "#9999997f", "#8888887f", "#9999997f" }

-- Terminal ANSI (16)
M.terminal = {
  black = "#292929",
  red = "#ad8686",
  green = "#859891",
  yellow = "#b3aa8f",
  blue = "#7789a3",
  magenta = "#8e7a93",
  cyan = "#698a8e",
  white = "#adadad",
  bright_black = "#393939",
  bright_red = "#bd9696",
  bright_green = "#95a8a1",
  bright_yellow = "#c3ba9f",
  bright_blue = "#8799b3",
  bright_magenta = "#9e8aa3",
  bright_cyan = "#799a9e",
  bright_white = "#bdbdbd",
}

return M
