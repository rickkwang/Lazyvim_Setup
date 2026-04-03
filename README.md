# LazyVim Setup

This is my personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim).

It is tuned for a transparent dark UI, fast navigation, and a small set of practical extras.

## Highlights

- Default colorscheme: `tokyonight storm`
- Transparent editor background
- Official `lualine` statusline with a transparent middle section
- `neo-tree` and `mini-files` enabled
- Telescope, outline, and treesitter context enabled
- Support for Python, C/C++, CMake, Markdown, Git, and Svelte
- Custom plugin overrides for UI consistency

## What This Repo Contains

- `lua/config/`
  - Core Neovim options, keymaps, autocmds, and startup helpers
- `lua/plugins/`
  - LazyVim plugin overrides and local additions
- `local-plugins/witch-line/`
  - A local copy of `witch-line` kept in this repo for reference and experimentation

## Current UI Setup

### Theme

- Primary theme: `tokyonight.nvim`
- Style: `storm`
- Transparent backgrounds enabled
- Extra highlight overrides for:
  - floating windows
  - Telescope
  - popup menus
  - tabline
  - statusline
  - Rust and TSX syntax accents

### Statusline

- Uses official `nvim-lualine/lualine.nvim`
- Global statusline enabled
- Middle sections are transparent
- Arrow separators are kept

## LazyVim Extras Enabled

From `lazyvim.json`:

- `mini-files`
- `neo-tree`
- `outline`
- `telescope`
- `clangd`
- `cmake`
- `git`
- `markdown`
- `python`
- `svelte`
- `dashboard-nvim`
- `treesitter-context`

## Local Plugin

I keep a local copy of `witch-line` in this repo for testing and comparison.

- It is not the active statusline right now
- The active statusline is `lualine`

## Installation

```bash
git clone https://github.com/rickkwang/Lazyvim_Setup ~/.config/nvim
```

Then start Neovim:

```bash
nvim
```

Lazy.nvim will handle plugin installation on first launch.

## Useful Files

- [init.lua](./init.lua)
- [lua/config/options.lua](./lua/config/options.lua)
- [lua/config/keymaps.lua](./lua/config/keymaps.lua)
- [lua/config/autocmds.lua](./lua/config/autocmds.lua)
- [lua/plugins/theme.lua](./lua/plugins/theme.lua)
- [lua/plugins/statusline.lua](./lua/plugins/statusline.lua)
- [lua/plugins/dashboard.lua](./lua/plugins/dashboard.lua)
- [lazyvim.json](./lazyvim.json)

## Notes

- This repo is a working personal setup, not a minimal starter template.
- Some plugin files are intentionally customized for my workflow.
- If you want to reuse it, start from `lua/plugins/` and adjust the theme and UI overrides first.
