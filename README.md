# LazyVim Configuration

This is my personal LazyVim configuration, a Neovim distribution built on [lazy.nvim](https://github.com/folke/lazy.nvim) and [mason.nvim](https://github.com/williamboman/mason.nvim) for plugin and tool management.

## Prerequisites

Before installing, make sure you have:
- Neovim >= 0.9.0 (https://github.com/neovim/neovim/releases)
- Git (https://git-scm.com/)
- A Nerd Font (https://www.nerdfonts.com/) installed and set in your terminal

## Installation

1. **Backup Current Configuration (if any):**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **Copy this configuration:**
   ```bash
   cp -r /path/to/this/lazyvim_config ~/.config/nvim
   ```
   (Replace `/path/to/this/lazyvim_config` with the actual path to this copied directory)

3. **Launch Neovim:**
   ```bash
   nvim
   ```
   The first launch will automatically install all plugins and language servers.

## Key Features

- Modern plugin management with lazy.nvim
- Built-in LSP (Language Server Protocol) support
- Tree-sitter syntax highlighting
- Telescope fuzzy finder
- NerdTree file explorer
- Git integration (fugitive)
- Formatting and linting support
- Many more productivity features

## Customization

To customize this configuration:
1. Edit `init.lua` to change global settings
2. Modify files in the `lua/` directory to adjust functionality
3. Install/uninstall plugins by editing the plugin list in the configuration files

## Useful Commands

- `<leader>l` - Open Lazy plugin manager
- `<leader>ff` - Find files with Telescope
- `<leader>fg` - Live grep with Telescope
- `<leader>fp` - Find projects with Telescope
- `<leader>gf` - Format current file
- `<leader>li` - Open LSP info
- `<space>` - Leader key is set to spacebar

## Updating

To update plugins and language servers:
1. Launch Neovim
2. Run `:Lazy` to open the Lazy manager
3. Press `u` to check for updates
4. Press `U` to update all plugins

## Troubleshooting

If you encounter issues:
1. Run `:checkhealth` to see if all dependencies are properly installed
2. Check if you have the latest Neovim version
3. Make sure you have a Nerd Font installed in your terminal
4. Try deleting the `~/.local/share/nvim` directory and reinstalling if problems persist

## Uninstall

To remove this configuration:
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

This will remove the LazyVim configuration and allow you to go back to a clean Neovim installation.

## Additional Notes

- The first launch of Neovim will take longer than usual as it installs all plugins automatically
- Make sure your terminal supports true color for proper syntax highlighting
- Some language servers might need to be installed separately depending on your development needs
