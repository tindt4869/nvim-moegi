-- Moegi palette index
-- Returns the palette table for a given variant slug.
--
-- Variants:
--   dark           → Moegi Dark (dark)
--   dark_vitesse   → Moegi Dark Vitesse (dark)
--   black          → Moegi Black (dark)
--   black_zen      → Moegi Black Zen (dark)
--   space          → Moegi Space (dark)
--   light          → Moegi Light (light)
--   light_vitesse  → Moegi Light Vitesse (light)
--   dawn           → Moegi Dawn (light)
--   iris           → Moegi Iris (light)

local variants = {
  dark = "moegi.palettes.dark",
  dark_vitesse = "moegi.palettes.dark_vitesse",
  black = "moegi.palettes.black",
  black_zen = "moegi.palettes.black_zen",
  space = "moegi.palettes.space",
  light = "moegi.palettes.light",
  light_vitesse = "moegi.palettes.light_vitesse",
  dawn = "moegi.palettes.dawn",
  iris = "moegi.palettes.iris",
}

local M = {}

--- Load a palette by variant slug.
---@param name string|nil  variant slug (default "dark")
---@return table palette
function M.load(name)
  name = name or "dark"
  local mod = variants[name]
  if not mod then
    error("moegi: unknown variant '" .. tostring(name) .. "'")
  end
  return require(mod)
end

--- List of available variant slugs.
M.variants = {
  "dark",
  "dark_vitesse",
  "black",
  "black_zen",
  "space",
  "light",
  "light_vitesse",
  "dawn",
  "iris",
}

return M
