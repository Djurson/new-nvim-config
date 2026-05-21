# Neovim Keymaps & Config Reference

> Leader key is `Space`. Keymaps listed as `<leader>x` mean `Space` then `x`.
>
> Tip: press `<leader>` and wait — **which-key** will pop up and show all available continuations.
>
> Open this file from inside Neovim: `<leader>hkm`

---

## Navigation

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between splits (also works across tmux panes) |
| `<C-e>` | Harpoon menu (pinned files) |
| `<C-1>` – `<C-4>` | Jump to harpoon slot 1–4 |
| `<leader><leader>` | Browse open buffers |

---

## Harpoon — [R]eel fast file switching

Pin your most-used files per project and jump between them without fuzzy finding.

| Key | Action |
|-----|--------|
| `<leader>ra` | [R]eel [A]dd — pin current file |
| `<leader>rr` | [R]eel [R]emove — unpin current file |
| `<leader>rl` | [R]eel [L]ist — open menu (edit/reorder here too) |
| `<leader>r1` | Reel to pinned file 1 |
| `<leader>r2` | Reel to pinned file 2 |
| `<leader>r3` | Reel to pinned file 3 |
| `<leader>r4` | Reel to pinned file 4 |

The list is **per git repo** — your Next.js project has different pins than your Go project.

---

## File tree — Neo-tree

| Key | Action |
|-----|--------|
| `<leader>tt` | Toggle Neo-tree sidebar |
| `<leader>tft` | Focus Neo-tree (open if closed, move cursor into it) |
| `\` | Close Neo-tree (from inside the tree) |

Neo-tree shows dotfiles and gitignored files by default. It does **not** auto-open on startup.

---

## Search — Telescope

All file/grep searches include hidden dotfiles (e.g. `.env`, `.gitignore`). `.git/` folders and `.DS_Store` files are excluded.

| Key | Action |
|-----|--------|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep (search file contents) |
| `<leader>sw` | Grep word under cursor |
| `<leader>s.` | Recent files |
| `<leader><leader>` | Open buffers |
| `<leader>/` | Fuzzy search inside current buffer |
| `<leader>s/` | Live grep across open files only |
| `<leader>sh` | Search help docs |
| `<leader>sk` | Search keymaps |
| `<leader>sc` | Search commands |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>sn` | Search Neovim config files |
| `<leader>sm` | Browse notification/message history (Noice) |

---

## Terminals — toggleterm

Six named persistent terminals, each tied to a specific purpose. State is preserved between toggles.

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle a general floating terminal |
| `<leader>tf` | Frontend terminal (Next.js / React) |
| `<leader>tb` | Backend terminal (Go server) |
| `<leader>tt` | Temp terminal |
| `<leader>tc` | Claude Code terminal |
| `<leader>tg` | Git terminal |
| `<leader>tbs` | Bottom split terminal (VS Code style) |
| `<Esc><Esc>` | Exit terminal insert mode back to normal mode |

**Recommended workflow with tmux:** use the named terminals above for quick runs, and dedicate full tmux windows to long-running dev servers so they survive editor restarts.

---

## LSP — language intelligence

These activate automatically when a language server attaches to a file.

| Key | Action |
|-----|--------|
| `grn` | Rename symbol |
| `gra` | Code action (fix, refactor, import, etc.) |
| `grd` | Go to definition |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grD` | Go to declaration (header files etc.) |
| `gO` | Document symbols (functions, vars in this file) |
| `gW` | Workspace symbols (across whole project) |
| `<leader>th` | Toggle inlay hints |
| `<leader>q` | Send diagnostics to quickfix list |
| `[d` / `]d` | Jump to previous/next diagnostic |

---

## Formatting & code

| Key | Action |
|-----|--------|
| `<leader>f` | Format buffer (uses conform.nvim) |

Auto-formats on save for **all languages**. Manual format also available via `<leader>f`.

Formatters installed: `black` + `isort` (Python), `prettierd` (JS/TS/React), `goimports` + `gofmt` (Go), `stylua` (Lua).

---

## Git — gitsigns

| Key | Action |
|-----|--------|
| `]c` / `[c` | Next / previous git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage entire buffer |
| `<leader>hR` | Reset entire buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hi` | Preview hunk inline |
| `<leader>hb` | Blame line (full) |
| `<leader>hd` | Diff this file against index |
| `<leader>hD` | Diff this file against last commit |
| `<leader>hq` | Hunk quickfix list (this file) |
| `<leader>hQ` | Hunk quickfix list (all files in repo) |
| `<leader>tgb` | Toggle inline git blame |
| `<leader>tw` | Toggle intra-line word diff |
| `ih` | Select hunk (text object, use in visual/operator mode) |

---

## UI & notifications — Noice

Noice replaces the command line and notification system with floating windows.

| Key | Action |
|-----|--------|
| `<leader>sm` | Browse message/notification history in Telescope |

To disable Noice if it feels too intrusive: comment out `require('noice').setup(...)` in `lua/custom/plugins/noice.lua` and restart.

---

## Copilot — inline AI completions

Copilot shows ghost-text suggestions as you type (auto-triggered).

| Key | Action |
|-----|--------|
| `<C-l>` (insert) | Accept Copilot suggestion |
| `<C-j>` (insert) | Next suggestion |
| `<C-k>` (insert) | Previous suggestion |
| `<C-e>` (insert) | Dismiss suggestion |

---

## Editing helpers

| Key | Action |
|-----|--------|
| `saiw)` | Surround word with `()` |
| `sd'` | Delete surrounding `'` |
| `sr)'` | Replace surrounding `)` with `'` |
| `va)` | Visually select around `)` |
| `<Tab>/<S-Tab>` (insert) | Accept completion / move through snippet fields (blink.cmp) |
| `<C-space>` (insert) | Open completion menu |

---

## Help

| Key | Action |
|-----|--------|
| `<leader>hkm` | Open this KEYMAPS.md file in a floating window |

---

## Plugins added this session

| Plugin | Purpose |
|--------|---------|
| **catppuccin** (mocha) | Colorscheme — replaces onedark |
| **indent-blankline** | Vertical indent guide lines |
| **mini.animate** | Smooth cursor, scroll, and window animations |
| **toggleterm** | Managed terminal windows inside Neovim |
| **noice + nvim-notify** | Floating cmdline, pretty notifications |
| **harpoon v2** | Per-project file bookmarks with instant jumps |
| **copilot.lua** | GitHub Copilot inline ghost-text completions |
| **rainbow_csv** | Colour-coded CSV/TSV column highlighting |
| **import-cost.nvim** | Inline import size display for JS/TS |
| **typescript-tools.nvim** | Enhanced TypeScript LSP features |

---

## Updating plugins

```
:lua vim.pack.update()
```

Inspect without downloading: `:lua vim.pack.update(nil, { offline = true })`
