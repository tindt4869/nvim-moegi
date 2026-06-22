-- lualine theme builder.
--
-- Builds a lualine theme table from a resolved Moegi palette. The mode accent
-- colors mirror the editor: green for normal, blue for insert, the variant's
-- primary for visual, amber for replace.
--
-- Usage (auto-follows the active variant):
--   require("lualine").setup({ options = { theme = "moegi" } })

local M = {}

--- Build a lualine theme from a resolved palette.
---@param c MoegiPalette
---@return table
function M.theme(c)
  local s = c.syntax
  return {
    normal = {
      a = { fg = c.bg, bg = c.secondary, gui = "bold" },
      b = { fg = c.fg, bg = c.bg_highlight },
      c = { fg = c.fg_ui, bg = c.bg_statusline },
    },
    insert = { a = { fg = c.bg, bg = c.info, gui = "bold" } },
    visual = { a = { fg = c.bg, bg = c.primary, gui = "bold" } },
    replace = { a = { fg = c.bg, bg = c.warning, gui = "bold" } },
    command = { a = { fg = c.bg, bg = s.number, gui = "bold" } },
    terminal = { a = { fg = c.bg, bg = s.string, gui = "bold" } },
    inactive = {
      a = { fg = c.fg_dim, bg = c.bg_statusline },
      b = { fg = c.fg_dim, bg = c.bg_statusline },
      c = { fg = c.fg_dim, bg = c.bg_statusline },
    },
  }
end

--- Theme for a given variant (defaults to the active one, then config/background).
---@param variant MoegiVariant|nil
---@return table
function M.get(variant)
  local moegi = require("moegi")
  return M.theme(moegi.colors(variant or moegi.current))
end

return M
