-- Generates extras/ghostty/moegi-<variant> from the Neovim palettes.
-- Run from the repo root:  nvim --headless --noplugin -u NONE -l extras/gen_ghostty.lua
vim.opt.runtimepath:prepend(vim.fn.getcwd())
local theme = require("moegi.theme")
local palettes = require("moegi.palettes")
local names = {
  dark="Moegi Dark", dark_vitesse="Moegi Dark Vitesse", black="Moegi Black",
  black_zen="Moegi Black Zen", space="Moegi Space", light="Moegi Light",
  light_vitesse="Moegi Light Vitesse", dawn="Moegi Dawn", iris="Moegi Iris",
}
local order = {"dark","dark_vitesse","black","black_zen","space","light","light_vitesse","dawn","iris"}
for _, slug in ipairs(order) do
  local c = theme.resolve_palette(palettes.load(slug))
  local t = c.terminal
  local pal = {
    t.black, t.red, t.green, t.yellow, t.blue, t.magenta, t.cyan, t.white,
    t.bright_black, t.bright_red, t.bright_green, t.bright_yellow,
    t.bright_blue, t.bright_magenta, t.bright_cyan, t.bright_white,
  }
  local lines = {}
  local add = function(s) lines[#lines+1] = s end
  add("# " .. names[slug] .. " — Ghostty theme")
  add("# Generated from moegi.nvim (https://github.com/moegi-design/vscode-theme)")
  add("")
  for i = 0, 15 do add(("palette = %d=%s"):format(i, pal[i+1])) end
  add("")
  add("background = " .. c.bg)
  add("foreground = " .. c.fg)
  add("cursor-color = " .. c.cursor)
  add("cursor-text = " .. c.bg)
  add("selection-background = " .. c.bg_visual)
  add("selection-foreground = " .. c.fg)
  local fname = "extras/ghostty/moegi-" .. slug:gsub("_", "-")
  vim.fn.writefile(lines, fname)
end
io.write("wrote " .. #order .. " ghostty themes\n")
