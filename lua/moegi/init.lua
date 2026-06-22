-- Public API for the Moegi colorscheme.
--
--   require("moegi").setup({ variant = "dark" })
--   require("moegi").load("space")        -- load a specific variant
--   vim.cmd.colorscheme("moegi")          -- equivalent via colors/moegi.lua
--
-- See lua/moegi/config.lua for all options.

local config = require("moegi.config")
local palettes = require("moegi.palettes")

local M = {}

M.variants = palettes.variants

---@param opts MoegiConfig|nil
function M.setup(opts)
  config.setup(opts)
end

--- Pick a default variant from `vim.o.background` when none is configured.
---@return string
local function default_variant()
  return vim.o.background == "light" and "light" or "dark"
end

--- Apply the colorscheme.
---@param variant MoegiVariant|nil  overrides config.variant for this call
function M.load(variant)
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local opts = config.options
  local name = variant or opts.variant or default_variant()
  local palette = palettes.load(name)

  -- Keep vim.o.background in sync with the chosen variant.
  vim.o.background = palette.background
  vim.o.termguicolors = true
  vim.g.colors_name = "moegi"
  M.current = name

  local theme = require("moegi.theme")
  local highlights, colors = theme.build(palette, opts)

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  -- Terminal colors.
  local term = require("moegi.groups.terminal")(colors)
  for i, hex in ipairs(term) do
    vim.g["terminal_color_" .. (i - 1)] = hex
  end
end

--- Return the resolved palette for a variant without applying it.
---@param variant MoegiVariant|nil
---@return MoegiPalette
function M.colors(variant)
  local name = variant or config.options.variant or default_variant()
  return require("moegi.theme").resolve_palette(palettes.load(name))
end

return M
