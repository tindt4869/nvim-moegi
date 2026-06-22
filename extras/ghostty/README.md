# Moegi — Ghostty themes

One theme file per variant, with all 16 ANSI colors, background, foreground,
cursor, and selection — generated from the same palette as the Neovim
colorscheme.

## Install

Copy the variant(s) you want into Ghostty's themes directory:

```sh
mkdir -p ~/.config/ghostty/themes
cp moegi-dark ~/.config/ghostty/themes/
# or all of them:
cp moegi-* ~/.config/ghostty/themes/
```

Then set it in `~/.config/ghostty/config`:

```
theme = moegi-dark
```

Reload Ghostty (or `cmd+shift+,`). To preview without editing config:

```sh
ghostty +list-themes        # moegi-* appear once copied into the themes dir
```

## Variants

`moegi-dark` · `moegi-dark-vitesse` · `moegi-black` · `moegi-black-zen` ·
`moegi-space` · `moegi-light` · `moegi-light-vitesse` · `moegi-dawn` · `moegi-iris`

## Light/dark auto-switch

Ghostty can follow the system appearance:

```
theme = light:moegi-light,dark:moegi-dark
```

## Regenerating

These are derived from `lua/moegi/palettes/`. To rebuild after a palette
change, re-run the generator (resolves alpha exactly like the editor does):

```sh
nvim --headless --noplugin -u NONE -l extras/gen_ghostty.lua
```
