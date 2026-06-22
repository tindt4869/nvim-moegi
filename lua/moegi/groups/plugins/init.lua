-- Plugin integration aggregator.
--
-- Each plugin lives in its own module returning `function(c, config) -> groups`.
-- Add a plugin by dropping a file here and listing it below. Integrations are
-- gated by `config.plugins`:
--   true            -> all enabled (default)
--   false           -> all disabled
--   { gitsigns=false } -> all enabled except the ones set to false

local modules = {
  "gitsigns",
  "telescope",
  "cmp",
  "blink",
  "nvimtree",
  "neotree",
  "bufferline",
  "indent_blankline",
  "whichkey",
  "notify",
  "trouble",
  "flash",
  "lazy",
  "mason",
  "dap",
  "mini",
  "rainbow_delimiters",
  "illuminate",
  "navic",
  "treesitter_context",
}

---@param c table
---@param config table
---@return table
return function(c, config)
  local enabled = config.plugins
  local function is_on(name)
    if enabled == false then
      return false
    end
    if type(enabled) == "table" then
      return enabled[name] ~= false
    end
    return true
  end

  local hl = {}
  for _, name in ipairs(modules) do
    if is_on(name) then
      local mod = require("moegi.groups.plugins." .. name)
      for grp, spec in pairs(mod(c, config)) do
        hl[grp] = spec
      end
    end
  end
  return hl
end
