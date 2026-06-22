-- Color utilities.
-- The upstream palettes keep VS Code's 8-digit "#rrggbbaa" values. Neovim's
-- GUI highlights have no alpha channel, so those must be flattened to a solid
-- "#rrggbb" by compositing them over a base color. That happens here, once,
-- before the palette reaches any highlight module.

local M = {}

---@param hex string  "#rrggbb"
---@return integer, integer, integer
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

--- Composite `fg` over `bg` at the given alpha (0..1).
---@param fg string  "#rrggbb"
---@param bg string  "#rrggbb"
---@param alpha number
---@return string  "#rrggbb"
function M.blend(fg, bg, alpha)
  local fr, fg_, fb = M.hex_to_rgb(fg)
  local br, bg_, bb = M.hex_to_rgb(bg)
  local function mix(f, b)
    return math.floor(f * alpha + b * (1 - alpha) + 0.5)
  end
  return string.format("#%02x%02x%02x", mix(fr, br), mix(fg_, bg_), mix(fb, bb))
end

--- Resolve a possibly-aliased color to a solid "#rrggbb".
--- Pass-through for solid hexes and non-color values (e.g. "NONE", nil).
---@param color any
---@param base string  base color to composite alpha over
---@return any
function M.resolve(color, base)
  if type(color) ~= "string" or color:sub(1, 1) ~= "#" then
    return color
  end
  if #color == 9 then
    local alpha = tonumber(color:sub(8, 9), 16) / 255
    return M.blend(color:sub(1, 7), base, alpha)
  end
  return color
end

--- Lighten/darken a solid color toward white/black by `amount` (0..1).
---@param hex string
---@param amount number  positive = lighter, negative = darker
---@return string
function M.shade(hex, amount)
  local target = amount >= 0 and "#ffffff" or "#000000"
  return M.blend(target, hex, math.abs(amount))
end

return M
