-- User configuration: defaults + merge.

local M = {}

---@class MoegiConfig
M.defaults = {
  -- Variant slug (see `require("moegi.palettes").variants`).
  -- When nil, the variant is derived from `vim.o.background`
  -- (dark -> "dark", light -> "light").
  variant = nil,

  -- Clear all background colors so the terminal shows through.
  transparent = false,

  -- Dim the background of inactive windows.
  dim_inactive = false,

  -- Per-token font styles. Each entry is merged into the group's spec,
  -- so you can set `{ italic = true }`, `{ bold = true }`, `{}`, etc.
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    strings = {},
    types = {},
    booleans = {},
  },

  -- Toggle individual plugin integrations. `true` enables every known
  -- plugin; pass a table to enable a subset, e.g. { gitsigns = false }.
  plugins = true,

  ---Mutate the palette before highlights are built.
  ---@type fun(palette: table)|nil
  on_palette = nil,

  ---Mutate or extend the final highlight table.
  ---@type fun(highlights: table, palette: table)|nil
  on_highlights = nil,
}

M.options = vim.deepcopy(M.defaults)

---@param opts MoegiConfig|nil
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
  return M.options
end

return M
