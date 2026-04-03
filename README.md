# LazyVim Setup

My personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim), tuned for a transparent dark UI, fast navigation, and a practical set of language extras.

## Features

- **Theme:** `tokyonight` (storm style) with transparent backgrounds
- **Statusline:** `lualine.nvim` with transparent middle sections and arrow separators
- **File navigation:** `neo-tree` + `mini-files`
- **Tools:** Telescope, outline, treesitter-context
- **Languages:** Python, C/C++ (clangd), CMake, Markdown, Git, Svelte

## Repository Structure

```
.
├── init.lua
├── lazyvim.json                  # LazyVim extras configuration
├── lua/
│   ├── config/
│   │   ├── options.lua           # Core Neovim options
│   │   ├── keymaps.lua           # Key mappings
│   │   ├── autocmds.lua          # Auto commands
│   │   └── lazy.lua              # Lazy.nvim bootstrap
│   └── plugins/
│       ├── theme.lua             # Tokyonight + highlight overrides
│       ├── statusline.lua        # Lualine configuration
│       ├── dashboard.lua         # Dashboard-nvim
│       └── ...                   # Other plugin overrides
└── local-plugins/
    └── witch-line/               # Local statusline plugin (inactive, kept for reference)
```

## LazyVim Extras

| Extra | Purpose |
|---|---|
| `neo-tree` | File tree sidebar |
| `mini-files` | Lightweight inline file browser |
| `telescope` | Fuzzy finder |
| `outline` | Symbol outline panel |
| `treesitter-context` | Sticky context header |
| `clangd` | C/C++ LSP |
| `cmake` | CMake support |
| `python` | Python LSP + tooling |
| `svelte` | Svelte support |
| `git` | Git integration |
| `markdown` | Markdown preview + extras |
| `dashboard-nvim` | Startup dashboard |

## Installation

```bash
git clone https://github.com/rickkwang/Lazyvim_Setup ~/.config/nvim
nvim
```

Lazy.nvim will install all plugins on first launch.

## Notes

- This is a personal working setup, not a minimal starter template.
- To adapt it, start with `lua/plugins/theme.lua` and `lua/plugins/statusline.lua`.
- `local-plugins/witch-line/` is not the active statusline — `lualine` is.
