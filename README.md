# 🌱 moegi.nvim

A Neovim port of the [Moegi](https://github.com/moegi-design/vscode-theme) VS Code
theme. *Moegi* (萌黄) is the old Japanese name for the yellow-green of new spring
shoots. Every color is taken verbatim from the upstream theme — nothing
approximated.

**9 variants**, dark and light:

| Slug | Name | | Slug | Name |
|------|------|-|------|------|
| `dark`         | Moegi Dark         | | `light`         | Moegi Light         |
| `dark_vitesse` | Moegi Dark Vitesse | | `light_vitesse` | Moegi Light Vitesse |
| `black`        | Moegi Black        | | `dawn`          | Moegi Dawn          |
| `black_zen`    | Moegi Black Zen    | | `iris`          | Moegi Iris          |
| `space`        | Moegi Space        | | | |

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "your/moegi.nvim",
  lazy = false,
  priority = 1000,
  opts = { variant = "dark" },
}
```

Then either let `opts` apply it, or:

```lua
vim.cmd.colorscheme("moegi")          -- uses the configured variant
vim.cmd.colorscheme("moegi-space")    -- pick a variant directly
```

## Configure

```lua
require("moegi").setup({
  variant = nil,           -- nil = follow vim.o.background (dark/light)
  transparent = false,     -- clear backgrounds
  dim_inactive = false,    -- darken inactive windows
  styles = {
    comments  = { italic = true },
    keywords  = {},
    functions = {},
    variables = {},
    strings   = {},
    types     = {},
    booleans  = {},
  },
  plugins = true,          -- true | false | { gitsigns = false, ... }
  on_palette = function(c) end,         -- mutate colors before build
  on_highlights = function(hl, c) end,  -- mutate the final highlight table
})
```

### Programmatic access

```lua
require("moegi").load("iris")           -- apply a variant now
local c = require("moegi").colors("dark")  -- resolved palette, no apply
local p = require("moegi.palettes").load("space")  -- raw palette
```

## Statusline (lualine)

A matching lualine theme follows whichever Moegi variant is active:

```lua
require("lualine").setup({ options = { theme = "moegi" } })
```

lualine reads its theme once at setup. To keep it in sync when you switch
variants at runtime, refresh on `ColorScheme`:

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "moegi",
  callback = function()
    package.loaded["lualine.themes.moegi"] = nil
    require("lualine").setup({ options = { theme = "moegi" } })
  end,
})
```

## Terminal (Ghostty)

Per-variant Ghostty themes live in [`extras/ghostty/`](extras/ghostty/) — copy
one into `~/.config/ghostty/themes/` and set `theme = moegi-dark` in your config.
See [`extras/ghostty/README.md`](extras/ghostty/README.md) for details and
system light/dark auto-switching.

## Architecture

Small, single-purpose modules. Adding colors or plugins is a localized change.

```
colors/
  moegi.lua            entry for :colorscheme moegi
  moegi-<variant>.lua  entry per variant
lua/moegi/
  init.lua             public API: setup / load / colors
  config.lua           defaults + merge
  types.lua            LuaCATS annotations (setup() completion)
  util.lua             color math (alpha-flatten, blend, shade)
  theme.lua            resolves palette, merges all group modules
  lualine.lua          builds the lualine theme from a palette
  palettes/            one table per variant (see palettes/README.md)
  groups/
    editor.lua         core UI groups
    syntax.lua         legacy Vim syntax
    treesitter.lua     @-capture groups
    lsp.lua            diagnostics + semantic tokens
    terminal.lua       16 ANSI colors
    plugins/
      init.lua         aggregator + per-plugin toggles
      <plugin>.lua     one file per plugin
lua/lualine/themes/
  moegi.lua            lualine theme shim (theme = "moegi")
extras/
  gen_ghostty.lua      regenerates the Ghostty themes
  ghostty/             one Ghostty theme per variant
```

**Data flow:** a variant palette → `util` flattens the upstream 8-digit
`#rrggbbaa` values to solid colors (Neovim's GUI highlights have no alpha) →
`theme.build` runs every group module `(colors, config) → { Group = spec }` and
merges them → `init.load` applies them with `nvim_set_hl`.

### Extending

- **New plugin:** add `lua/moegi/groups/plugins/<name>.lua` returning
  `function(c, config) return { ... } end`, then add `"<name>"` to the list in
  `plugins/init.lua`.
- **New group category:** add a module under `groups/` and list it in
  `core_modules` in `theme.lua`.
- **Tweak a color everywhere:** edit the palette files in `palettes/`. To
  re-derive from upstream, see `palettes/README.md`.

## Credits

- [moegi-design/vscode-theme](https://github.com/moegi-design/vscode-theme) — the
  original theme and all color values.
