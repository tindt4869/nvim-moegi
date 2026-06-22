# Moegi palette

Color palettes for the Moegi Neovim colorscheme, ported 1:1 from the
[`moegi-design/vscode-theme`](https://github.com/moegi-design/vscode-theme).
Every value here is taken directly from the upstream VS Code theme JSON — no
colors were invented or approximated.

## Variants (9)

| Slug | Name | bg | bg | fg | primary | secondary |
|------|------|----|----|----|---------|-----------|
| `dark`          | Moegi Dark          | dark  | `#202020` | `#dddddd` | `#ff8787`   | `#66b395` |
| `dark_vitesse`  | Moegi Dark Vitesse  | dark  | `#202020` | `#dddddd` | `#ff8787`   | `#66b395` |
| `black`         | Moegi Black         | dark  | `#0d0d0d` | `#dddddd` | `#ff8787cf` | `#66b395` |
| `black_zen`     | Moegi Black Zen     | dark  | `#0d0d0d` | `#dddddd` | `#505050`   | `#999999` |
| `space`         | Moegi Space         | dark  | `#221e30` | `#ddd8e4` | `#b290ba`   | `#66b395` |
| `light`         | Moegi Light         | light | `#ffffff` | `#333333` | `#e38181`   | `#8bc6b0` |
| `light_vitesse` | Moegi Light Vitesse | light | `#ffffff` | `#333333` | `#e38181`   | `#8bc6b0` |
| `dawn`          | Moegi Dawn          | light | `#fff9f3` | `#483f37` | `#e38181`   | `#8bc6b0` |
| `iris`          | Moegi Iris          | light | `#f5f2f9` | `#433748` | `#b290ba`   | `#8bc6b0` |

### About the two families

- **Standard** (`dark`, `black`, `black_zen`, `space`, `light`, `dawn`, `iris`)
  share the signature Moegi syntax palette — pink keywords, mint strings, amber
  numbers, cyan functions, periwinkle variables, peach types.
- **Vitesse** (`dark_vitesse`, `light_vitesse`) use a distinct, lower-saturation
  [Vitesse](https://github.com/antfu/vscode-theme-vitesse)-derived syntax grammar
  (green keywords, terracotta strings, teal numbers/types). The UI chrome stays
  identical to `dark` / `light`.
- **Black Zen** is intentionally near-monochrome: grey keywords/variables, muted
  ANSI palette, low-contrast accents.

## Usage

```lua
local palettes = require("moegi.palettes")

palettes.variants          --> { "dark", "dark_vitesse", "black", ... }
local p = palettes.load("dark")   -- defaults to "dark" when name is nil

p.bg                 --> "#202020"
p.syntax.keyword     --> "#ed9cc2"
p.syntax["function"] --> "#5fb5be"   ("function" is a Lua keyword → bracketed)
p.terminal.red       --> "#e47474"
p.bracket[1]         --> "#b5a165"
```

## Schema

Each variant module returns a table with the following shape.

### Top level

```
name           string   "moegi_<slug>"
background      string   "dark" | "light"
```

### Base UI

| Group | Keys |
|-------|------|
| Backgrounds | `bg` `bg_dark` `bg_float` `bg_popup` `bg_highlight` `bg_visual` `bg_search` `bg_search_cur` `bg_statusline` `bg_tab_active` `bg_tab_inactive` `bg_input` `bg_code` |
| Foregrounds | `fg` `fg_ui` `fg_dim` `fg_disabled` `linenr` `linenr_active` `inlayhint` `winbar` |
| Lines & cursor | `cursor` `border` `border_focus` `indent` `indent_active` `whitespace` |
| Accents | `primary` `secondary` `link` |
| Diagnostics | `error` `warning` `info` `hint` |
| Git / diff | `git_add` `git_change` `git_delete` `git_renamed` `git_ignored` `git_conflict` `diff_add` `diff_change` `diff_delete` `gutter_add` `gutter_change` `gutter_delete` |

### `M.syntax`

`comment` `punctuation` `operator` `keyword` `conditional` `storage` `string`
`string_escape` `regex` `number` `boolean` `constant` `character` `["function"]`
`method` `variable` `variable_builtin` `parameter` `field` `property` `type`
`type_builtin` `class` `namespace` `tag` `tag_attribute` `preproc` `label`
`invalid` `md_heading` `md_bold` `md_italic` `md_quote` `md_link` `md_raw`
`md_list` `md_inserted` `md_deleted` `md_changed`

### `M.semantic`

Upstream semantic-token overrides, verbatim (e.g. `newOperator`, `stringLiteral`,
`numberLiteral`, `customLiteral`; the Vitesse variants instead expose
`namespace`, `property`, `interface`, `type`, `class`).

### `M.bracket`

Array of 4 rainbow bracket-pair colors (`editorBracketHighlight.foreground1..4`).

### `M.terminal`

The 16 ANSI colors: `black` `red` `green` `yellow` `blue` `magenta` `cyan`
`white` and their `bright_*` counterparts.

## Notes on transparency

Many UI values keep their upstream 8-digit `#rrggbbaa` form (e.g.
`bg_visual = "#ffffff1f"`, `comment = "#ffffff4f"`). These are alpha-over-background
blends in VS Code. When building highlight groups, blend them against the
relevant `bg`/`bg_dark` if your terminal/GUI doesn't honor the alpha channel.

## Source of truth

Generated from the upstream theme files:
`themes/moegi-<variant>-color-theme.json`. To re-derive after an upstream
update, re-extract the workbench `colors`, `tokenColors`, and
`semanticTokenColors` for each variant.
