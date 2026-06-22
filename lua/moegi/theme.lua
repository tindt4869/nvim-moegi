-- Theme assembler.
-- Resolves the palette to solid colors, then merges every highlight-group
-- module into a single { GroupName = spec } table. Adding a new group module
-- is a one-line change to `core_modules` below.

local util = require("moegi.util")

local M = {}

-- Highlight-group providers, applied in order (later wins on conflict).
local core_modules = {
  "editor",
  "syntax",
  "treesitter",
  "lsp",
}

-- Groups whose background is cleared in transparent mode.
local transparent_groups = {
  "Normal", "NormalNC", "NormalFloat", "FloatBorder", "FloatTitle",
  "SignColumn", "SignColumnSB", "LineNr", "LineNrAbove", "LineNrBelow",
  "CursorLineNr", "FoldColumn", "EndOfBuffer", "MsgArea",
  "StatusLine", "StatusLineNC", "TabLine", "TabLineFill",
  "TelescopeNormal", "TelescopeBorder", "WhichKeyFloat",
  "NeoTreeNormal", "NeoTreeNormalNC", "NvimTreeNormal", "NvimTreeNormalNC",
}

local function resolve_palette(p)
  local base = p.bg or "#000000"
  local c = {}
  for k, v in pairs(p) do
    if type(v) == "table" then
      local t = {}
      for kk, vv in pairs(v) do
        t[kk] = util.resolve(vv, base)
      end
      c[k] = t
    else
      c[k] = util.resolve(v, base)
    end
  end
  return c
end

local function apply_transparency(hl)
  for _, name in ipairs(transparent_groups) do
    if hl[name] then
      hl[name].bg = "NONE"
    end
  end
end

--- Build the full highlight table for a palette.
---@param palette table  raw variant palette
---@param config table   resolved user config
---@return table highlights, table colors
function M.build(palette, config)
  local c = resolve_palette(palette)
  if config.on_palette then
    config.on_palette(c)
  end

  local hl = {}
  local function merge(groups)
    for grp, spec in pairs(groups) do
      hl[grp] = spec
    end
  end

  for _, name in ipairs(core_modules) do
    merge(require("moegi.groups." .. name)(c, config))
  end
  merge(require("moegi.groups.plugins")(c, config))

  if config.transparent then
    apply_transparency(hl)
  end

  if config.on_highlights then
    config.on_highlights(hl, c)
  end

  return hl, c
end

--- Resolve a raw palette to solid colors (exposed for callers/tests).
M.resolve_palette = resolve_palette

return M
